import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { TaskAllocationController } from "src/controller/Taskallocation.controller";
import { Assay001wb } from "src/entity/Assay001wb";
import { Assaytype001mb } from "src/entity/Assaytype001mb";
import { Category001mb } from "src/entity/Category001mb";
import { Categoryfunction001mb } from "src/entity/Categoryfunction001mb";
import { Ligand001wb } from "src/entity/Ligand001wb";
import { Ligandtype001mb } from "src/entity/Ligandtype001mb";
import { Ligandversion001mb } from "src/entity/Ligandversion001mb";
import { Originalprefix001mb } from "src/entity/Originalprefix001mb";
import { Routeofadministration001mb } from "src/entity/Routeofadministration001mb";
import { Taskallocation001wb } from "src/entity/Taskallocation001wb";
import { Toxicity001mb } from "src/entity/Toxicity001mb";
import { Unitsinglevalue001mb } from "src/entity/Unitsinglevalue001mb";
import { User001mb } from "src/entity/User001mb";
import { TaskallocationService } from "src/service/Taskallocation.service";
import { UserService } from "src/service/user.service";

@Module({
    imports: [TypeOrmModule.forFeature([
        Taskallocation001wb,
        User001mb,
        Ligand001wb,
        Ligandtype001mb,
        Assaytype001mb,
        Toxicity001mb,
        Routeofadministration001mb,
        Originalprefix001mb,
        Category001mb,
        Categoryfunction001mb,
        Unitsinglevalue001mb,
        Ligand001wb,
        Assay001wb,
        Ligandversion001mb ])],
    providers: [TaskallocationService],
    controllers: [TaskAllocationController],
    exports: [TaskallocationService,]
})
export class TaskallocationModule { }