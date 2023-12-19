import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { countries } from "./coutries";

@Entity()
export class groupes {
    @PrimaryGeneratedColumn()
    groupId: number;

    @Column()
    groupName: string;

    @OneToMany(() => countries, (c) => c.group)
    countriesList: countries[]
}