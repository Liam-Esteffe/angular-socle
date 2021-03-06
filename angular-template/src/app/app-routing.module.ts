import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';

const routes: Routes = [
  {path: 'home', component: HomeComponent},
  {path: '', redirectTo: 'home', pathMatch: 'full'},
  { path: '**', component: HomeComponent } // replace by Error Page Component
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
