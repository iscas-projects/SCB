(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var117 0)
(declare-sort var1905 0)
(declare-sort var2046 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1905) void)
(declare-fun cast-from-var2152-to-var1905 (var2152) var1905)
(declare-fun var2046-init () var2046)
(declare-fun <init>/1281898776 (var2046) void)
(declare-fun _categoryElements/325579317 (var2152) var2046)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var184-init () var184)
(declare-fun <init>/1909349671 (var184 String String) void)
(declare-fun hasMoreTokens/711654492 (var184) Bool)
(declare-const null-var2152 var2152)
(declare-const null-String String)
(declare-const var3864 var2152) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath 
(assert (not (= var3864 null-var2152)))
(declare-const var401 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var401 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2152-to-var1905 var3864))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3864!1 var2152)
(define-const var545 var2046 var2046-init) ; Statement: $r1 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var545)) ; Statement: specialinvoke $r1.<java.util.LinkedList: void <init>()>() 

(declare-const var545!1 var2046)
(declare-const var3864!2 var2152)
(assert (not (= var3864!2 null-var2152)))
(assert (= (_categoryElements/325579317 var3864!2) var545!1)) ; Statement: r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath: java.util.LinkedList _categoryElements> = $r1 
(define-const var1323 String var401) ; Statement: r8 = r2 
 ; Statement: if r2 != null goto $r6 = virtualinvoke r8.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert (not (= var401 null-String))) ; Cond: r2 != null 
(assert true)
(define-const var1588 String (replace/1524665721 var1323 47 46)) ; Statement: $r6 = virtualinvoke r8.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
(define-const var1193 String (replace/1524665721 var1588 92 46)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(char,char)>(92, 46) 
(define-const var586 var184 var184-init) ; Statement: $r3 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var586 var1193 ".")) ; Statement: specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>($r7, ".") 

(declare-const var586!1 var184)
(declare-const var1193!1 String)
(declare-const var3925 String)
(assert true) ; Non Conditional
(assert true)
(define-const var1421 Bool (hasMoreTokens/711654492 var586!1)) ; Statement: $z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1421 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2152-to-var1905=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath], java.lang.Object), var2046-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), _categoryElements/325579317=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath], java.util.LinkedList), replace/1524665721=([java.lang.String, char, char], java.lang.String), var184-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean)}
; {var2152=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath, var3864=r0, var401=r2, var117=null_type, var1905=java.lang.Object, var2046=java.util.LinkedList, var545=$r1, var1323=r8, var1588=$r6, var1193=$r7, var184=java.util.StringTokenizer, var586=$r3, var3925=".", var1421=$z0}
; {org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath=var2152, r0=var3864, r2=var401, null_type=var117, java.lang.Object=var1905, java.util.LinkedList=var2046, $r1=var545, r8=var1323, $r6=var1588, $r7=var1193, java.util.StringTokenizer=var184, $r3=var586, "."=var3925, $z0=var1421}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.LinkedList;	specialinvoke $r1.<java.util.LinkedList: void <init>()>();	r0.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath: java.util.LinkedList _categoryElements> = $r1;	r8 = r2;	if r2 != null goto $r6 = virtualinvoke r8.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r6 = virtualinvoke r8.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(char,char)>(92, 46);	$r3 = new java.util.StringTokenizer;	specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>($r7, ".");	$z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto return;	return
;block_num 4