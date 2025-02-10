import { application } from "../application";
import ExampleController from "./example_controller";
import DropdownController from "./dropdown_controller";

// コントローラを登録
application.register("example", ExampleController);
application.register("dropdown", DropdownController);
