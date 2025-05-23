@extends('front.layout.master')

@section('main_content')
@php
   $setting = App\Models\Setting::where('id', 1)->first();
@endphp
    <div class="page-top" style="background-image: url({{ asset('uploads/'.$setting->banner) }})">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Tentang Kami</h2>
                    <div class="breadcrumb-container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Beranda</a></li>
                            <li class="breadcrumb-item active">Tentang Kami</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="special pt_70 pb_70">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full-section">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="left-side">
                                    <div class="inner">
                                        <h3>{{ $welcome_items->heading }}</h3>
                                        <p>
                                            {!! nl2br($welcome_items->description) !!}
                                        </p>
                                        @if ($welcome_items->button_text != '')
                                            <div class="button-style-1 mt_20">
                                                <a href="{{ $welcome_items->button_link }}"
                                                    target="_blank">{{ $welcome_items->button_text }}</a>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="right-side"
                                    style="background-image:url({{ asset('uploads/' . $welcome_items->photo) }});">
                                    <a class="video-button"
                                        href="https://www.youtube.com/watch?v={{ $welcome_items->video }}"><span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @if ($about_item->featured_status == 'Show')
    <div class="why-choose pt_70">
        <div class="container">
            <div class="row">
                @foreach ($features as $feature)
                    <div class="col-md-4">
                        <div class="inner pb_70">
                            <div class="icon">
                                <i class="{{ $feature->icon }}"></i>
                            </div>
                            <div class="text">
                                <h2>{{ $feature->heading }}</h2>
                                <p>
                                    {!! nl2br($feature->description) !!}
                                </p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    @endif

    @if ($counter_items->status == 'Show')
        <div class="counter-section pt_70 pb_70">
            <div class="container">
                <div class="row counter-items">
                    <div class="col-md-3 counter-item">
                        <div class="counter">{{ $counter_items->item1_number }}</div>
                        <div class="text">{{ $counter_items->item1_text }}</div>
                    </div>
                    <div class="col-md-3 counter-item">
                        <div class="counter">{{ $counter_items->item2_number }}</div>
                        <div class="text">{{ $counter_items->item2_text }}</div>
                    </div>
                    <div class="col-md-3 counter-item">
                        <div class="counter">{{ $counter_items->item3_number }}</div>
                        <div class="text">{{ $counter_items->item3_text }}</div>
                    </div>
                    <div class="col-md-3 counter-item">
                        <div class="counter">{{ $counter_items->item4_number }}</div>
                        <div class="text">{{ $counter_items->item4_text }}</div>
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection
