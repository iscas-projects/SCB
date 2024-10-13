(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1219 0)
(declare-sort var2789 0)
(declare-sort var811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2789-init () var2789)
(declare-fun this$0/1563630699 (var1219) var811)
(declare-fun baseDir/-807310563 (var811) var2789)
(declare-fun var811_access$000/2022679182 () Bool)
(declare-fun val$name/1563630699 (var1219) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun <init>/-1833447926 (var2789 var2789 String) void)
(declare-fun isFile/1016913701 (var2789) Bool)
(declare-const null-var1219 var1219)
(declare-const var2789-separatorChar Int)
(declare-const var1832 var1219) ; Statement: r1 := @this: freemarker.cache.FileTemplateLoader$2 
(assert (not (= var1832 null-var1219)))
(define-const var367 var2789 var2789-init) ; Statement: $r0 = new java.io.File 
(define-const var2092 var811 (this$0/1563630699 var1832)) ; Statement: $r2 = r1.<freemarker.cache.FileTemplateLoader$2: freemarker.cache.FileTemplateLoader this$0> 
(define-const var1910 var2789 (baseDir/-807310563 var2092)) ; Statement: $r3 = $r2.<freemarker.cache.FileTemplateLoader: java.io.File baseDir> 
(define-const var1567 Bool var811_access$000/2022679182) ; Statement: $z0 = staticinvoke <freemarker.cache.FileTemplateLoader: boolean access$000()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<freemarker.cache.FileTemplateLoader$2: java.lang.String val$name> 
(assert (= (ite var1567 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2045 String (val$name/1563630699 var1832)) ; Statement: $r4 = r1.<freemarker.cache.FileTemplateLoader$2: java.lang.String val$name> 
(define-const var1493 Int var2789-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3312 String (replace/1524665721 var2045 47 var1493)) ; Statement: $r23 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, $c0) 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var367 var1910 var3312)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, $r23) 

(declare-const var367!1 var2789)
(declare-const var1910!1 var2789)
(declare-const var3312!1 String)
(assert true)
(define-const var326 Bool (isFile/1016913701 var367!1)) ; Statement: $z1 = virtualinvoke $r0.<java.io.File: boolean isFile()>() 
 ; Statement: if $z1 != 0 goto $r5 = r1.<freemarker.cache.FileTemplateLoader$2: freemarker.cache.FileTemplateLoader this$0> 
(assert (not (not (= (ite var326 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2789-init=([], java.io.File), this$0/1563630699=([freemarker.cache.FileTemplateLoader$2], freemarker.cache.FileTemplateLoader), baseDir/-807310563=([freemarker.cache.FileTemplateLoader], java.io.File), var811_access$000/2022679182=([], boolean), val$name/1563630699=([freemarker.cache.FileTemplateLoader$2], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), isFile/1016913701=([java.io.File], boolean)}
; {var1219=freemarker.cache.FileTemplateLoader$2, var1832=r1, var2789=java.io.File, var367=$r0, var811=freemarker.cache.FileTemplateLoader, var2092=$r2, var1910=$r3, var1567=$z0, var2045=$r4, var1493=$c0, var3312=$r23, var326=$z1}
; {freemarker.cache.FileTemplateLoader$2=var1219, r1=var1832, java.io.File=var2789, $r0=var367, freemarker.cache.FileTemplateLoader=var811, $r2=var2092, $r3=var1910, $z0=var1567, $r4=var2045, $c0=var1493, $r23=var3312, $z1=var326}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: freemarker.cache.FileTemplateLoader$2;	$r0 = new java.io.File;	$r2 = r1.<freemarker.cache.FileTemplateLoader$2: freemarker.cache.FileTemplateLoader this$0>;	$r3 = $r2.<freemarker.cache.FileTemplateLoader: java.io.File baseDir>;	$z0 = staticinvoke <freemarker.cache.FileTemplateLoader: boolean access$000()>();	if $z0 == 0 goto $r4 = r1.<freemarker.cache.FileTemplateLoader$2: java.lang.String val$name>;	$r4 = r1.<freemarker.cache.FileTemplateLoader$2: java.lang.String val$name>;	$c0 = <java.io.File: char separatorChar>;	$r23 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, $c0);	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, $r23);	$z1 = virtualinvoke $r0.<java.io.File: boolean isFile()>();	if $z1 != 0 goto $r5 = r1.<freemarker.cache.FileTemplateLoader$2: freemarker.cache.FileTemplateLoader this$0>;	return null
;block_num 4