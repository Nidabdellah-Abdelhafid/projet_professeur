@extends('layouts.app')


@section('content')
 

<div class="d-flex justify-content-center">
        <div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center py-4 sm:pt-0">
            @if (Route::has('login'))
                <div class="hidden fixed top-0  right-0 px-6 py-4 sm:block">
                    @auth
                    <a href="{{ url('/professeurs') }}" class="text-sm text-gray-700 dark:text-gray-500 underline btn btn-success ">Home</a>
                    
                    @else
                        <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500  underline btn btn-success alert alert-success">Connexion</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700  dark:text-gray-500 underline btn btn-primary alert alert-primary">S'inscrire</a>
                        @endif
                    @endauth
                </div>
            @endif

            
            </div>    
        </div>
        @endsection
