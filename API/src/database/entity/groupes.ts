import { Column, Entity, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { countries } from "./coutries";
import { competitions } from "./competitions";

@Entity()
export class groupes {
    @PrimaryGeneratedColumn()
    groupId: number;

    @Column()
    groupName: string;

    @OneToMany(() => countries, (c) => c.group)
    countriesList: countries[]

    @ManyToOne(() => competitions, (c) => c.groupesList)
    competition: competitions
}