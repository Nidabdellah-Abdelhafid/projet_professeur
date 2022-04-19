

@extends('layouts.app')


@section('content')
 



<div class="container ">
       <div class="row">
           <div class="col-lg-12">
                @if(session()->has('success'))
                <div class="alert alert-success">
                    {{session()->get('success')}}
                </div>
                @endif

               <div class="page-header">
               <div class="alert alert-dismissible alert-primary">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <h4 class="alert-heading">Information!</h4>
            <p class="mb-0">Dans le tableau ci-dessous   les nom de chaque professeur et ses dossiers et  l'états de chaque dossier. </p>
            </div>
               </div>
               <div class="bs-component">
               
                
           
           <table class="table table-light">
                <thead>
                    <tr>
                    <th scope="col">Nom</th>
                    <th scope="col">Prenom</th>
                    <th scope="col">Dossier_scientifique</th>
                    <th scope="col">Dossier_Pedagogique</th>
                    <th scope="col">Dossier_administratif</th>
                    
                    <th scope="col">Voir profile</th>
                    <th scope="col">Éditer</th>
                    <!--
                    <th scope="col">Delete</th>
                    -->

                    </tr>
                </thead>
                <tbody>
                    @foreach($professeurs as $professeur)
                    <tr>
                    <td>{{$professeur->nom}}<hr><b class="text-info">L'etat de dossier --</b></td>
                    <td>{{$professeur->prenom}}<br/></td>
                    <td><a href="/storage/{{$professeur->Dossier_scientifique}}" class="text-success"  download>Download Dossier_scientifique</a><hr><b class="text-dark">{{$professeur->etat_ds}}</b></td>
                    <td><a href="/storage/{{$professeur->Dossier_Pedagogique}}" class="text-success" download>Download Dossier_Pedagogique</a><hr><b class="text-dark">{{$professeur->etat_dp}}</b></td>
                    <td><a href="/storage/{{$professeur->Dossier_administratif}}" class="text-success" download>Download Dossier_administratif</a><hr><b class="text-dark">{{$professeur->etat_da}}</b></td>
                    
                    <td><form action="" method="post"><a href="{{route('professeurs.show',$professeur->id)}}" class="btn btn-dark">Profil</a></form></td>
                    <td><form action="" method="post"><a href="{{route('professeurs.edit',$professeur->id)}}" class="btn btn-primary">Éditer</a></form></td>
                    
                    <!--
                    <td><form action="{{route('professeurs.destroy',$professeur->id)}}" method="post">{{csrf_field()}}{{method_field('DELETE')}}<button type="submit" class="btn btn-danger">Delete</button></form></td>
                    -->
                    </tr>
                    
                    
                @endforeach
                </tbody>
                </table>
            </div>
            </div>
        </div>
</div>



@endsection