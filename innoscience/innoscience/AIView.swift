//
//  AIView.swift
//  innoscience
//
//  Created by Vijayaganapathy Pavithraa on 26/8/24.
//
import SwiftUI

struct AIView: View {
    
    @State var points = 0
    
    var physicalSkills = ["Strength", "Flexibility","Power","Endurance","Agility","Coordination"]
    @State var selectedPhysicalSkills = "Endurance"
    @State var chosenLevel = ""

    var easyStrength = ["Wall Sit", "Modified Push-Ups", "Standing Calf Raises", "Glute Bridges", "Seated Leg Lifts"]
    
    var easyEndurance = ["Marching in Place", "Step Touch", "Arm Circles", "Standing Side Leg Raises", "Wall Push-Ups"]
    
    var easyFlexibility = ["Seated Forward Fold", "Neck Stretches", "Child's Pose", "Cat-Cow Stretch", "Standing Side Stretch"]
    
    var easyPower = ["Standing Calf Raises with Explosive Lift", "Knee Drive", "Mini Squat Jumps", "Incline Push-Up with Explosive Hands", "Reverse Lunge with Knee Lift"]
    
    var easyAgility = ["High Knees", "Side Steps", "Heel Flicks", "Quick Feet", "Forward and Backward Steps"]
    
    var easyCoordination = ["Marching in Place with Arm Swings", "Toe Touches", "Single-Leg Balance with Arm Reach", "Cross-Body Knee Drive", "Heel to Toe Walk"]
    
    var moderateStrength = ["Standard Push-Ups", "Squats", "Plank", "Lunges", "Side Plank"]
    
    var moderateEndurance = ["Jumping Jacks", "High Knees", "Bodyweight Squats", "Mountain Climbers", "Butt Kicks"]
    
    var moderateFlexibility = ["Downward Dog to Upward Dog Flow", "Lunge with Spinal Twist", "Standing Hamstring Stretch", "Figure Four Stretch", "Wide-Legged Forward Bend"]
    
    var moderatePower = ["Standing Calf Raises with Explosive Lift", "Knee Drive", "Mini Squat Jumps", "Incline Push-Up with Explosive Hands", "Reverse Lunge with Knee Lift"]
    
    var moderateAgility = ["Lateral Shuffle", "Four-Corner Drill", "Cross Jacks", "Dot Drill", "Split Lunge Jumps"]
    
    var moderateCoordination = ["Grapevine Step", "High Knees with Opposite Arm Touch", "Lateral Step with Arm Crossover", "Plank with Shoulder Tap", "Forward and Backward Hop with Clap"]
    
    var challengingStrength = ["Pistol Squats (Assisted or Unassisted)", "Dive Bomber Push-Ups", "Single-Leg Deadlifts", "Plank to Push-Up", "Burpees"]
    
    var challengingEndurance = ["Burpees", "Plank Jacks", "Lateral Lunges with Hop", "Tuck Jumps", "Broad Jumps"]
    
    var challengingFlexibility = ["Pigeon Pose", "Extended Triangle Pose", "Standing Splits", "Half Frog Pose", "Deep Side Lunge Stretch"]
    
    var challengingPower = ["Standing Calf Raises with Explosive Lift", "Knee Drive", "Mini Squat Jumps", "Incline Push-Up with Explosive Hands", "Reverse Lunge with Knee Lift"]
    
    var challengingAgility = ["Burpee with Lateral Jump", "Lateral Bound with Single-Leg Balance", "Skater Jumps with Touchdown", "Cone or Object Drills", "High Knee Tuck Jumps"]
    
    var challengingCoordination = ["Alternating Single-Leg Hops with Arm Swings", "Agility Ladder Drill (Imaginary)", "Four-Point Touch Drill", "Cross-Body Mountain Climbers", "Reverse Lunge with Opposite Arm Reach"]
    
    
    @State var suggestion: [String] = []
    @State var userPreference = []
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Image("Jimmy")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .mask(
                            Circle()
                        )
                    Text("Your quest is to complete 5 exercises daily. Good luck, matey!")
                        .fontWeight(.bold)
                }
                
                Text("Which of the 6 physical skills do you want to improve on?")
                    .padding(10)
                Picker("Please choose a physical skill", selection: $selectedPhysicalSkills) {
                    ForEach(physicalSkills, id: \.self) {
                        Text($0)
                    }
                }
                .padding(5)
                Text("How intense would you like your workout to be?")
                    .padding(10)
                HStack{
                    Button{
                        chosenLevel = "Easy"
                    }label: {
                        Text("Easy")
                    }
                    .buttonStyle(.bordered)
                    .tint(.green)
                    
                    Button{
                        chosenLevel = "Moderate"
                    }label: {
                        Text("Moderate")
                    }
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    
                    Button{
                        chosenLevel = "Challenging"
                    }label: {
                        Text("Challenging")
                    }
                    .buttonStyle(.bordered)
                    .tint(.red)
                }
                .padding(5)
                Button{
                    if selectedPhysicalSkills == "Strength"{
                        if chosenLevel == "Easy"{
                            suggestion.append(contentsOf: easyStrength)
                        }
                        if chosenLevel == "Moderate"{
                            suggestion.append(contentsOf: moderateStrength)
                        }
                        if chosenLevel == "Challenging"{
                            suggestion.append(contentsOf:challengingStrength)
                        }
                    }else if selectedPhysicalSkills == "Flexibility"{
                        if chosenLevel == "Easy"{
                            suggestion.append(contentsOf:easyFlexibility)
                        }
                        if chosenLevel == "Moderate"{
                            suggestion.append(contentsOf:moderateFlexibility)
                        }
                        if chosenLevel == "Challenging"{
                            suggestion.append(contentsOf:challengingFlexibility)
                        }
                    }else if selectedPhysicalSkills == "Power"{
                        if chosenLevel == "Easy"{
                            suggestion.append(contentsOf:easyPower)
                        }
                        if chosenLevel == "Moderate"{
                            suggestion.append(contentsOf:moderatePower)
                        }
                        if chosenLevel == "Challenging"{
                            suggestion.append(contentsOf:challengingPower)
                        }
                    }else if selectedPhysicalSkills == "Endurance"{
                        if chosenLevel == "Easy"{
                            suggestion.append(contentsOf:easyEndurance)
                        }
                        if chosenLevel == "Moderate"{
                            suggestion.append(contentsOf:moderateEndurance)
                        }
                        if chosenLevel == "Challenging"{
                            suggestion.append(contentsOf:challengingEndurance)
                        }
                    }else if selectedPhysicalSkills == "Agility"{
                        if chosenLevel == "Easy"{
                            suggestion.append(contentsOf:easyAgility)
                        }
                        if chosenLevel == "Moderate"{
                            suggestion.append(contentsOf:moderateAgility)
                        }
                        if chosenLevel == "Challenging"{
                            suggestion.append(contentsOf:challengingAgility)
                        }
                    }else if selectedPhysicalSkills == "Coordination"{
                        if chosenLevel == "Easy"{
                            suggestion.append(contentsOf:easyCoordination)
                        }
                        if chosenLevel == "Moderate"{
                            suggestion.append(contentsOf:moderateCoordination)
                        }
                        if chosenLevel == "Challenging"{
                            suggestion.append(contentsOf:challengingCoordination)
                        }
                    }
                }label: {
                    Text("Generate")
                }
                .buttonStyle(.bordered)
                
                List{
                    ForEach(suggestion, id: \.self) { workout in
                            Text("\(workout)")
                            .swipeActions{
                                Button("Remove"){
                                    //destructive
                                }
                                .tint(.red)
                                Button{
                                    points = points + 1
                                }label:{
                                    Image(systemName: "checkmark")
                                }
                                .tint(.green)
                            }
                    }
                }
            }
            .navigationTitle("Today's Workout Plan")
            .padding()
        }
    }
}

#Preview {
    AIView()
}
