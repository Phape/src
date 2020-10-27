package de.gruppe4.datenbankenportfolio;

import javax.persistence.*;
import lombok.Data; 
import lombok.NoArgsConstructor;

@Entity
@Table(name = "adresse")
@Data //Wird benutzt um Getter, Setter und toString im Hintergrund zu erzeugen
@NoArgsConstructor
public class Adresse {
    @Id
    @Column(name = "Adress_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int adressId;

    @Column(name = "Straße")
    private String straße;

    @Column(name = "Hausnummer")
    private String hausnummer;

    // @Column(name = "Postleitzahl")
    private int postleitzahl;

    @ManyToOne
    @JoinColumn(name="Postleitzahl")
    private Ort ort;
}
