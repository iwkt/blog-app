import { Application } from "@hotwired/stimulus";

const application = Application.start(); // Stimulus を初期化
window.Stimulus = application; // デバッグ用（Console で確認！）

// コントローラを手動でインポートして登録
import DropdownController from "./controllers/dropdown_controller";

application.register("dropdown", DropdownController);

export { application }; // 他のファイルで使えるように
