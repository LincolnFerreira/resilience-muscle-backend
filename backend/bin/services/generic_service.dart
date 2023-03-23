abstract class GenericService<T> {
  T findOne(int id);
  T findAll();
  bool save(T value);
  bool delete(T value);
}
