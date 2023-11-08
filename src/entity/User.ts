import {
    Entity,
    Column,
    PrimaryGeneratedColumn,
    BaseEntity,
    CreateDateColumn,
    UpdateDateColumn, OneToMany
} from "typeorm";
import { Recipe } from "./Recipe";

@Entity() // se puede pasar como parametro el nombre de tabla ej: 'usersTable'

export class User extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    email: string;

    @Column()
    password: string;

    @Column({ default: true })
    active: boolean;

    @CreateDateColumn()
    createdAt: Date;

    @UpdateDateColumn()
    updatedAt: Date;

    @OneToMany (() => Recipe, (recipe) => recipe.user)
    recipes : Recipe[]
}