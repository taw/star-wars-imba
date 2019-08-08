import Film from "./Film"
import Planet from "./Planet"
import Species from "./Species"
import Vehicle from "./Vehicle"
import Starship from "./Starship"

tag Person
  def render
    <self>
      <div>
        "Name"
      <div>
        data:name
      <div>
        "Height"
      <div>
        data:height
      <div>
        "Mass"
      <div>
        data:mass
      <div>
        "Hair Color"
      <div>
        data:hair_color
      <div>
        "Skin Color"
      <div>
        data:skin_color
      <div>
        "Eye Color"
      <div>
        data:eye_color
      <div>
        "Birth Year"
      <div>
        data:birth_year
      <div>
        "Gender"
      <div>
        data:gender
      <div>
        "Homeworld"
      <Planet[data:homeworld]>
      <div>
        "Films"
      <div>
        for film in data:films
          <Film[film]>
      <div>
        "Vehicles"
      <div>
        for vehicle in data:vehicles
          <Vehicle[vehicle]>
      <div>
        "Starships"
      <div>
        for starship in data:starships
          <Starship[starship]>

export default Person

