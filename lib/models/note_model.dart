class Note{
  final String id;
  final String date;
  final String days;
  final String text;
  //poner que sea favorito es opcional
  final bool? isFavorite;

  Note({
    required this.id,
    required this.date,
    required this.days,
    required this.text,
    //el valor por defecto es falso
    this.isFavorite = false,
  });

}