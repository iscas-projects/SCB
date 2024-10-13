(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun size/1201748172 (var2101) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2101 var2101)
(declare-const var2289 var2101) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath 
(assert (not (= var2289 null-var2101)))
(define-const var2343 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var2343 100)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>(100) 

(declare-const var2343!1 String)
(declare-const var2528 Int)
(assert true)
;(assert (append/1560614132 var2343!1 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n") 
(declare-const var2343!2 String)
(assert (str.prefixof var2343!1 var2343!2))
(assert true)
;(assert (append/1560614132 var2343!2 "===========================\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("===========================\n") 
(declare-const var2343!3 String)
(assert (str.prefixof var2343!2 var2343!3))
(assert true)
;(assert (append/1560614132 var2343!3 "CategoryPath:                   \n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("CategoryPath:                   \n") 
(declare-const var2343!4 String)
(assert (str.prefixof var2343!3 var2343!4))
(assert true)
;(assert (append/1560614132 var2343!4 "---------------------------\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("---------------------------\n") 
(declare-const var2343!5 String)
(assert (str.prefixof var2343!4 var2343!5))
(assert true)
;(assert (append/1560614132 var2343!5 "\nCategoryPath:\n\t")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\nCategoryPath:\n\t") 
(declare-const var2343!6 String)
(assert (str.prefixof var2343!5 var2343!6))
(assert true)
(define-const var185 Int (size/1201748172 var2289)) ; Statement: $i0 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath: int size()>() 
 ; Statement: if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<<NONE>>") 
(assert (<= var185 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (append/1560614132 var2343!6 "<<NONE>>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<<NONE>>") 
(declare-const var2343!7 String)
(assert (str.prefixof var2343!6 var2343!7))
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var2343!7 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n") 
(declare-const var2343!8 String)
(assert (str.prefixof var2343!7 var2343!8))
(assert true)
;(assert (append/1560614132 var2343!8 "===========================\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("===========================\n") 
(declare-const var2343!9 String)
(assert (str.prefixof var2343!8 var2343!9))
(assert true)
(define-const var74 String (toString/-222306083 var2343!9)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), size/1201748172=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2101=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath, var2289=r1, var2343=$r0, var2528=100, var185=$i0, var74=$r2}
; {org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath=var2101, r1=var2289, $r0=var2343, 100=var2528, $i0=var185, $r2=var74}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 8,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>(100);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("===========================\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("CategoryPath:                   \n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("---------------------------\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\nCategoryPath:\n\t");	$i0 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath: int size()>();	if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<<NONE>>");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<<NONE>>");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("===========================\n");	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3