package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Heroi;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-06-03T14:11:32")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile SingularAttribute<Categoria, Integer> codigo;
    public static volatile ListAttribute<Categoria, Heroi> heroiList;
    public static volatile SingularAttribute<Categoria, String> nome;

}