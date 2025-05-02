<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Amenity;
use App\Models\BlogCategory;
use App\Models\Booking;
use App\Models\Destination;
use App\Models\DestinationPhoto;
use App\Models\DestinationVideo;
use App\Models\Faq;
use App\Models\Feature;
use App\Models\Package;
use App\Models\PackageAmenity;
use App\Models\PackageFaq;
use App\Models\PackageItinerary;
use App\Models\PackagePhoto;
use App\Models\PackageVideo;
use App\Models\Post;
use App\Models\Review;
use App\Models\Slider;
use App\Models\Sponsor;
use App\Models\Subscriber;
use App\Models\TeamMember;
use App\Models\Testimonial;
use App\Models\Tour;
use App\Models\User;
use Illuminate\Support\Facades\File;
use Illuminate\Http\Request;

class AdminTrashController extends Controller
{

    // Slider Trash
    public function SliderTrash(){
        $sliders = Slider::onlyTrashed()->get();
        return view('admin.trash.slider', compact('sliders'));
    }
    public function SliderTrashDelete($id){
        $slider = Slider::withTrashed()->find($id);
        unlink(public_path('trash/'.$slider->photo));
        $slider->forceDelete();

        return redirect()->back()->with('success', 'Slider berhasil di hapus');
    }
    public function SliderTrashRestore($id){
        $slider = Slider::withTrashed()->find($id);
        $slider->restore();

        return redirect()->back()->with('success', 'Slider berhasil di pulihkan');
    }

    // Amenity Trash
    public function AmenityTrash(){
        $amenities = Amenity::onlyTrashed()->get();
        return view('admin.trash.amenity',compact('amenities'));
    }
    public function AmenityTrashDelete($id){
        $amenity = Amenity::withTrashed()->find($id);
        $amenity->forceDelete();
        return redirect()->back()->with('success', 'Amenity berhasil di hapus');
    }
    public function AmenityTrashRestore($id){
        $amenity = Amenity::withTrashed()->find($id);
        $amenity->restore();
        return redirect()->back()->with('success', 'Amenity berhasil di pulihkan');
    }

    // Review Trash
    public function ReviewTrash(){
        $reviews = Review::onlyTrashed()->get();
        return view('admin.trash.review',compact('reviews'));
    }
    public function ReviewTrashDelete($id){
        $review = Review::withTrashed()->find($id);
        $review->forceDelete();
        return redirect()->back();
    }
    public function ReviewTrashRestore($id){
        $review = Review::withTrashed()->find($id);
        $review->restore();
        return redirect()->back();
    }

    // Feature Trash
    public function FeatureTrash(){
        $features = Feature::onlyTrashed()->get();

        return view('admin.trash.feature', compact('features'));
    }
    public function FeatureTrashDelete($id){
        $feature = Feature::withTrashed()->find($id);
        $feature->forceDelete();
        return redirect()->back()->with('success', 'Feature berhasil di hapus');
    }
    public function FeatureTrashRestore($id){
        $feature = Feature::withTrashed()->find($id);
        $feature->restore();

        return redirect()->back()->with('success', 'Feature berhasil di pulihkan');
    }

    // Destination Trash

    public function DestinationTrash(){

        $destinations = Destination::onlyTrashed()->get();
        return view('admin.trash.destination',compact('destinations'));
    }

    public function DestinationTrashDelete($id){
        $destination = Destination::withTrashed()->find($id);
        unlink(public_path('trash/'.$destination->featured_photo));
        $destination->forceDelete();

        return redirect()->back()->with('success', 'Destination berhasil di hapus');
    }

    public function DestinationTrashRestore($id){
        $destination = Destination::withTrashed()->find($id);
        File::move(public_path('trash/'.$destination->featured_photo), public_path('trash/'.$destination->featured_photo));
        $destination->restore();

        return redirect()->back()->with('success', 'Destination berhasil di pulihkan');
    }

    // Destination Photo Trash
    public function DestinationPhotoTrash(){
        $destination = Destination::with('photos')->first();
        $destination_photos = DestinationPhoto::onlyTrashed()->get();

        return view('admin.trash.destination_photo', compact('destination_photos','destination'));
    }

    public function DestinationPhotoTrashDelete($id){
        $destination = DestinationPhoto::withTrashed()->find($id);
        unlink(public_path('trash/').$destination->photo);
        $destination->forceDelete();

        return redirect()->back()->with('success', 'Destination photo berhasil di hapus');
    }

    public function DestinationPhotoTrashRestore($id){
        $destination = DestinationPhoto::withTrashed()->find($id);
        File::move(public_path('trash/'.$destination->photo), public_path('trash/'.$destination->photo));
        $destination->restore();

        return redirect()->back()->with('success', 'Destination photo berhasil di pulihkan');
    }

    // Destination Video Trash
    public function DestinationVideoTrash(){
        $id = DestinationVideo::find('id');
        $destination = Destination::with('photos')->first();
        $destination_videos = DestinationVideo::onlyTrashed()->get();

        return view('admin.trash.destination_video', compact('destination_videos','destination'));
    }

    public function DestinationVideoTrashDelete($id){
        $destination_video = DestinationVideo::withTrashed()->find($id);
        $destination_video->forceDelete();

        return redirect()->back()->with('success', 'Destination video berhasil di hapus');
    }

    public function DestinationVideoTrashRestore($id){
        $destination_video = DestinationVideo::withTrashed()->find($id);
        $destination_video->restore();

        return redirect()->back()->with('success', 'Destination video berhasil di pulihkan');
    }

    // Category Blog Trash
    public function BlogCategoryTrash(){
        $blog_categories = BlogCategory::onlyTrashed()->get();
        return view('admin.trash.blog_category', compact('blog_categories'));
    }

    public function BlogCategoryTrashDelete($id){
        $category = BlogCategory::withTrashed()->find($id);
        $category->forceDelete();

        return redirect()->back()->with('success', 'Category blog berhasil di hapus');
    }

    public function BlogCategoryTrashRestore($id){
        $category = BlogCategory::withTrashed()->find($id);
        $category->restore();

        return redirect()->back()->with('success', 'Category blog berhasil di pulihkan');
    }

    // Blog Trash
    public function BlogTrash(){
        $id = Post::find('id');
        $blog_categories = BlogCategory::all();
        $posts = post::onlyTrashed()->get();

        return view('admin.trash.blog', compact('posts','blog_categories'));
    }

    public function BlogTrashDelete($id){
        $blog = Post::withTrashed()->find($id);
        unlink(public_path('trash/'.$blog->photo));
        $blog->forceDelete();

        return redirect()->back()->with('success', 'Blog berhasil di hapus');
    }

    public function BlogTrashRestore($id){
        $blog = Post::withTrashed()->find($id);
        File::move(public_path('trash/'.$blog->photo), public_path('trash/'.$blog->photo));
        $blog->restore();

        return redirect()->back()->with('success', 'Blog berhasil di pulihkan');
    }

    // Package Trash
    public function PackageTrash(){
        $packages = Package::onlyTrashed()->get();
        return view('admin.trash.package', compact('packages'));
    }

    public function PackageTrashDelete($id){
        $package = Package::withTrashed()->find($id);
        unlink(public_path('trash/' . $package->featured_photo));
        unlink(public_path('trash/' . $package->banner));
        $package->forceDelete();

        return redirect()->back()->with('success', 'Package berhasil di hapus');
    }

    public function PackageTrashRestore($id){
        $package = Package::withTrashed()->find($id);
        File::move(public_path('trash/'.$package->featured_photo),public_path('trash/').$package->featured_photo);
        File::move(public_path('trash/'.$package->banner),public_path('trash/').$package->banner);
        $package->restore();

        return redirect()->back()->with('success', 'Package berhasil di pulihkan');
    }

    // Package Amenity Trash
    public function PackageAmenityTrash(){
        $package_amenities_includes = PackageAmenity::with('amenity')->where('type','include')->onlyTrashed()->get();
        $package_amenities_excludes = PackageAmenity::with('amenity')->where('type','exclude')->onlyTrashed()->get();
        $package = Package::with('package_amenities')->first();
        $amenities = Amenity::orderBy('name','asc')->get();
        return view('admin.trash.package_amenity', compact('package_amenities_includes','package_amenities_excludes', 'package','amenities'));
    }

    public function PackageAmenityTrashDelete($id){
        $amenity = PackageAmenity::withTrashed()->find($id);
        $amenity->forceDelete();

        return redirect()->back()->with('success', 'Amenity berhasil di hapus');
    }

    public function PackageAmenityTrashRestore($id){
        $amenity = PackageAmenity::withTrashed()->find($id);
        $amenity->restore();

        return redirect()->back()->with('success', 'Amenity berhasil di pulihkan');
    }

    // Package Itinerary Trash
    public function PackageItineraryTrash(){
        $package = Package::with('package_itinerary')->first();
        $package_itineraries = PackageItinerary::onlyTrashed()->get();
        return view('admin.trash.package_itinerary', compact('package_itineraries','package'));
    }

    public function PackageItineraryTrashDelete($id){
        $itinerary = PackageItinerary::withTrashed()->find($id);
        $itinerary->forceDelete();

        return redirect()->back()->with('success', 'Itinerary berhasil di hapus');
    }

    public function PackageItineraryTrashRestore($id){
        $itinerary = PackageItinerary::withTrashed()->find($id);
        $itinerary->restore();

        return redirect()->back()->with('success', 'Itinerary berhasil di pulihkan');
    }

    // Package Faq Trash
    public function PackageFaqTrash(){
        $package = Package::with('package_faqs')->first();
        $package_faqs = PackageFaq::onlyTrashed()->get();
        return view('admin.trash.package_faq', compact('package_faqs','package'));
    }

    public function PackageFaqTrashDelete($id){
        $package_faq = PackageFaq::withTrashed()->find($id);
        $package_faq->forceDelete();

        return redirect()->back()->with('success', 'FAQ berhasil di hapus');
    }

    public function PackageFaqTrashRestore($id){
        $package_faq = PackageFaq::withTrashed()->find($id);
        $package_faq->restore();

        return redirect()->back()->with('success', 'FAQ berhasil di pulihkan');
    }

    // Package Photo Trash
    public function PackagePhotoTrash(){
        $package = Package::with('package_photos')->first();
        $package_photos = PackagePhoto::onlyTrashed()->get();

        return view('admin.trash.package_photo', compact('package_photos','package'));
    }

    public function PackagePhotoTrashDelete($id){
        $package = PackagePhoto::withTrashed()->find($id);
        unlink(public_path('trash/').$package->photo);
        $package->forceDelete();

        return redirect()->back()->with('success', 'Package photo berhasil di hapus');
    }

    public function PackagePhotoTrashRestore($id){
        $package = PackagePhoto::withTrashed()->find($id);
        File::move(public_path('trash/'.$package->photo), public_path('trash/'.$package->photo));
        $package->restore();

        return redirect()->back()->with('success', 'Package photo berhasil di pulihkan');
    }

    // Package Video Trash
    public function PackageVideoTrash(){
        $id = PackageVideo::find('id');
        $package = Package::with('package_photos')->first();
        $package_videos = PackageVideo::onlyTrashed()->get();

        return view('admin.trash.package_video', compact('package_videos','package'));
    }

    public function PackageVideoTrashDelete($id){
        $package_video = PackageVideo::withTrashed()->find($id);
        $package_video->forceDelete();

        return redirect()->back()->with('success', 'Package video berhasil di hapus');
    }

    public function PackageVideoTrashRestore($id){
        $package_video = PackageVideo::withTrashed()->find($id);
        $package_video->restore();

        return redirect()->back()->with('success', 'Package video berhasil di pulihkan');
    }

    // Tour Trash
    public function TourTrash(){
        $tours = Tour::onlyTrashed()->get();
        return view('admin.trash.tour', compact('tours'));
    }

    public function TourTrashDelete($id){
        $tour = Tour::withTrashed()->find($id);
        $tour->forceDelete();
    return redirect()->back()->with('success', 'Tour berhasil di hapus');
    }

    public function TourTrashRestore($id){
        $tour = Tour::withTrashed()->find($id);
        $tour->restore();
    return redirect()->back()->with('success', 'Tour berhasil di pulihkan');
    }

    //Booking Trash
    public function BookingTrash(Request $request)
    {
        $tours = Tour::with('package')->first();

        $bookings = Booking::with(['user', 'tour', 'package'])->where('tour_id',$tours->id)->where('package_id',$tours->package->id)->onlyTrashed()->get();

        return view('admin.trash.booking', compact('bookings','tours'));
    }
    public function BookingTrashDelete($id){
        $booking = Booking::withTrashed()->find($id);
        $booking->forceDelete();

        return redirect()->back()->with('success', 'Booking berhasil di hapus');
    }

    public function BookingTrashRestore($id){
        $booking = Booking::withTrashed()->find($id);
        $booking->restore();

        return redirect()->back()->with('success', 'Booking berhasil di pulihkan');
    }

    // Subscriber Trash
    public function SubscriberTrash(){
        $subscribers = Subscriber::onlyTrashed()->get();
        return view('admin.trash.subscriber', compact('subscribers'));
    }

    public function SubscriberTrashDelete($id){
        $subscriber = Subscriber::withTrashed()->find($id);
        $subscriber->forceDelete();

        return redirect()->back()->with('success', 'Subscriber berhasil di hapus');
    }

    public function SubscriberTrashRestore($id){
        $subscriber = Subscriber::withTrashed()->find($id);
        $subscriber->restore();

        return redirect()->back()->with('success', 'Subscriber berhasil di pulihkan');
    }

    // User Trash
    public function UserTrash(){
        $users = User::onlyTrashed()->get();
        return view('admin.trash.user', compact('users'));
    }

    public function UserTrashDelete($id){
        $user = User::withTrashed()->find($id);
        unlink(public_path('trash/'.$user->photo));
        $user->forceDelete();

        return redirect()->back()->with('success', 'User berhasil di hapus');
    }

    public function UserTrashRestore($id){
        $user = User::withTrashed()->find($id);
        File::move(public_path('trash/'.$user->photo), public_path('trash/'.$user->photo));
        $user->restore();

        return redirect()->back()->with('success', 'User berhasil di pulihkan');
    }
    public function TestimonialTrash(){
        $testimonials = Testimonial::onlyTrashed()->get();
        return view('admin.trash.testimonial', compact('testimonials'));
    }
    public function TestimonialTrashDelete($id){
        $testimonial = Testimonial::withTrashed()->find($id);
        unlink(public_path('trash/'.$testimonial->photo));
        $testimonial->forceDelete();
        return redirect()->back()->with('success', 'Testimonial berhasil di hapus');
    }
    public function TestimonialTrashRestore($id){
        $testimonial = Testimonial::withTrashed()->find($id);
        File::move(public_path('trash/'.$testimonial->photo), public_path('trash/'.$testimonial->photo));
        $testimonial->restore();
        return redirect()->back()->with('success','Testimonial berhasil di pulihkan!');
    }
    public function FaqTrash(){
        $faqs = Faq::onlyTrashed()->get();
        return view('admin.trash.faq', compact('faqs'));
    }
    public function FaqTrashDelete($id){
        $faq = Faq::withTrashed()->find($id);
        $faq->forceDelete();
        return redirect()->back()->with('success', 'FAQ berhasil di hapus');
    }
    public function FaqTrashRestore($id){
        $faq = Faq::withTrashed()->find($id);
        $faq->restore();
        return redirect()->back()->with('success', 'FAQ berhasil di pulihkan');
    }
    public function TeamMemberTrash(){
        $team_members = TeamMember::onlyTrashed()->get();
        return view('admin.trash.team_member', compact('team_members'));
    }
    public function TeamMemberTrashDelete($id){
        $team_member = TeamMember::withTrashed()->find($id);
        unlink(public_path('trash/'.$team_member->photo));
        $team_member->forceDelete();
        return redirect()->back()->with('success', 'Team member berhasil di hapus');
    }
    public function TeamMemberTrashRestore($id){
        $team_member = TeamMember::withTrashed()->find($id);
        File::move(public_path('trash/'.$team_member->photo), public_path('trash/'.$team_member->photo));
        $team_member->restore();
        return redirect()->back()->with('success', 'Team member berhasil di pulihkan');
    }
    public function SponsorTrash(){
        $sponsor_photos = Sponsor::onlyTrashed()->get();
        return view('admin.trash.sponsor', compact('sponsor_photos'));
    }
    public function SponsorTrashDelete($id){
        $sponsor = Sponsor::withTrashed()->find($id);
        unlink(public_path('trash/').$sponsor->photo);
        $sponsor->forceDelete();
        return redirect()->back()->with('success', 'Sponsor berhasil di hapus');
    }
    public function SponsorTrashRestore($id){
        $sponsor = Sponsor::withTrashed()->find($id);
        File::move(public_path('trash/'.$sponsor->photo), public_path('trash/').$sponsor->photo);
        $sponsor->restore();
        return redirect()->back()->with('success', 'Sponsor berhasil di pulihkan');
    }
}
