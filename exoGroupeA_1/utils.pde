//trouver une liste d'images à partir d'un chemin de dossier
import java.util.List;
import java.util.Arrays;

String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    List<String> list = new ArrayList<String>(Arrays.asList(names));

    for (int i=0; i<list.size(); i++) {
      if (list.get(i).equals(".DS_Store"))list.remove(i);
    }
    names = list.toArray(new String[0]);
    return names;
  } else {
    // If it's not a directory
    return null;
  }
}
