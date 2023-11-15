import {
    Entity,
    Column,
    PrimaryGeneratedColumn,
    BaseEntity,
    CreateDateColumn,
    UpdateDateColumn, ManyToOne
} from "typeorm";
import { User } from "./User";

@Entity() // se puede pasar como parametro el nombre de tabla ej: 'usersTable'

export class Recipe extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    name: string;

    @Column()
    description: string;

    @Column()
    image: string;

    @Column('varchar',{length:500})
    ingredients: string;

    @Column('varchar',{length:800})
    preparation: string;

    @Column()
    time: string;

    @Column({ default: true })
    active: boolean;

    @CreateDateColumn()
    createdAt: Date;

    @UpdateDateColumn()
    updatedAt: Date;

    @ManyToOne(() => User, (user) => user.recipes)
    user: User
}