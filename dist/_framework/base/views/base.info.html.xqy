
(:@GENERATED@:)
xquery version "1.0-ml";
(:~ 

Copyright 2011 - NativeLogix

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.




 :)
declare default element namespace "http://www.w3.org/1999/xhtml";
import module namespace response = "http://xquerrail.com/response" at "../../response.xqy";

declare namespace domain = "http://xquerrail.com/domain";

declare option xdmp:output "indent-untyped=yes";
declare variable $response as map:map external;

let $init := response:initialize($response)
let $controller := response:controller()
return
<div class="info-view">
 for $c in $controller 
 return 
    <div class="controller">{$c}</div>
</div>