// void main (){
//   for (Index = 10; index < 27; index) {
//   print(Index);
// }
// }


//--- Langkah 2 ---
// void main() {
//   for (int index = 10; index < 27; index++) {
//     print(index);
//   }
// }

//--- Langkah 3 ---
void main() {
  for (int index = 10; index < 27; index++) {

    if (index == 21) break;

    else if (index > 11 && index < 15) continue;

    print(index);
  }
}