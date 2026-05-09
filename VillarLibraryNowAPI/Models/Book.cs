namespace VillarLibraryNowAPI.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string? Title { get; set; }
        public string? Author { get; set; }
        public string? Genre { get; set; }
        public bool Available { get; set; }s
        public int PublishedYear { get;  set; }

    }
}
