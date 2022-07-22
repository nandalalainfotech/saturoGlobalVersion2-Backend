import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { UnitlowendvalueDTO } from "src/dto/Unitlowendvalue.dto";
import { Unitlowendvalue001mb } from "src/entity/Unitlowendvalue001mb";
import { Repository } from "typeorm";

@Injectable()
export class UnitlowendvalueService {

    constructor(
        @InjectRepository(Unitlowendvalue001mb) private readonly unitlowendvalueRepository: Repository<Unitlowendvalue001mb>) {

    }
    async create(unitlowendvalueDTO: UnitlowendvalueDTO): Promise<Unitlowendvalue001mb> {
        const unitlowendvalue001mb = new Unitlowendvalue001mb();
        unitlowendvalue001mb.setProperties(unitlowendvalueDTO);
        return this.unitlowendvalueRepository.save(unitlowendvalue001mb);
    }
    async update(unitlowendvalueDTO: UnitlowendvalueDTO): Promise<Unitlowendvalue001mb> {
        const unitlowendvalue001mb = new Unitlowendvalue001mb();
        unitlowendvalue001mb.setProperties(unitlowendvalueDTO);
        await this.unitlowendvalueRepository.update({ }, unitlowendvalue001mb);
        return unitlowendvalue001mb;
    }

    async findAll(): Promise<Unitlowendvalue001mb[]> {
        let unitlowendvalue001mbs: Unitlowendvalue001mb[] = [];
        unitlowendvalue001mbs = await this.unitlowendvalueRepository.find({order: { united: "ASC" }});
        for(let unitlowendvalue001mb of unitlowendvalue001mbs) {
            unitlowendvalue001mb.united = unescape( unitlowendvalue001mb.united);
        }
        return unitlowendvalue001mbs;
    }

    findOne(id: number): Promise<Unitlowendvalue001mb> {
        return this.unitlowendvalueRepository.findOne(id);
    }
    async remove(slNo: number): Promise<void> {
        await this.unitlowendvalueRepository.delete(slNo);
    }
}