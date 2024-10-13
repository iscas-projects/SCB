(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var813 0)
(declare-sort var905 0)
(declare-sort var3065 0)
(declare-sort var2344 0)
(declare-sort var3841 0)
(declare-sort var1566 0)
(declare-sort var3961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3065-init () var3065)
(declare-fun <init>/995032529 (var3065) void)
(declare-fun dissect/1240351160 (var813 String) (Array Int String))
(declare-fun push/1515821691 (var3065 var2344) var2344)
(declare-fun cast-from-String-to-var2344 (String) var2344)
(declare-fun var3841-init () var3841)
(declare-fun <init>/1909349671 (var3841 String String) void)
(declare-fun hasMoreTokens/711654492 (var3841) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun size/-1825798970 (var3961) Int)
(declare-fun cast-from-var3065-to-var3961 (var3065) var3961)
(declare-fun var1566-init () var1566)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681595970 (var1566 String) void)
(declare-const null-var813 var813)
(declare-const null-String String)
(declare-const var1566-separator String)
(declare-const var869 var813) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var869 null-var813)))
(declare-const var689 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var689 null-String)))
(define-const var3126 var3065 var3065-init) ; Statement: $r0 = new java.util.Stack 
(assert true)
;(assert (<init>/995032529 var3126)) ; Statement: specialinvoke $r0.<java.util.Stack: void <init>()>() 

(declare-const var3126!1 var3065)
(assert true)
(define-const var3481 (Array Int String) (dissect/1240351160 var869 var689)) ; Statement: r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.lang.String[] dissect(java.lang.String)>(r2) 
(define-const var3553 String (select var3481 0)) ; Statement: $r4 = r3[0] 
(assert true)
;(assert (push/1515821691 var3126!1 (cast-from-String-to-var2344 var3553))) ; Statement: virtualinvoke $r0.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r4) 

(declare-const var3126!2 var3065)
(declare-const var3553!1 String)
(define-const var3202 var3841 var3841-init) ; Statement: $r5 = new java.util.StringTokenizer 
(define-const var3998 String (select var3481 1)) ; Statement: $r7 = r3[1] 
(define-const var3476 String var1566-separator) ; Statement: $r6 = <java.io.File: java.lang.String separator> 
(assert true)
;(assert (<init>/1909349671 var3202 var3998 var3476)) ; Statement: specialinvoke $r5.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>($r7, $r6) 

(declare-const var3202!1 var3841)
(declare-const var3998!1 String)
(declare-const var3476!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3468 Bool (hasMoreTokens/711654492 var3202!1)) ; Statement: $z2 = virtualinvoke $r5.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z2 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (= (ite var3468 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2748 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2748)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2748!1 String)
(assert (= var2748!1 ""))
(assert true)
(define-const var3929 Int (size/-1825798970 (cast-from-var3065-to-var3961 var3126!2))) ; Statement: i0 = virtualinvoke $r0.<java.util.Stack: int size()>() 
(define-const var33 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r9 = new java.io.File 
(assert (>= var33 var3929)) ; Cond: i3 >= i0 
(define-const var2409 var1566 var1566-init) ; Statement: $r9 = new java.io.File 
(assert true)
(define-const var2377 String (toString/-2075883882 var2748!1)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var2409 var2377)) ; Statement: specialinvoke $r9.<java.io.File: void <init>(java.lang.String)>($r10) 

(declare-const var2409!1 var1566)
(declare-const var2377!1 String)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3065-init=([], java.util.Stack), <init>/995032529=([java.util.Stack], void), dissect/1240351160=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.lang.String[]), push/1515821691=([java.util.Stack, java.lang.Object], java.lang.Object), cast-from-String-to-var2344=([java.lang.String], java.lang.Object), var3841-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), size/-1825798970=([java.util.Vector], int), cast-from-var3065-to-var3961=([java.util.Stack], java.util.Vector), var1566-init=([], java.io.File), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void)}
; {var813=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var869=r1, var689=r2, var905=null_type, var3065=java.util.Stack, var3126=$r0, var3481=r3, var3553=$r4, var2344=java.lang.Object, var3841=java.util.StringTokenizer, var3202=$r5, var3998=$r7, var1566=java.io.File, var3476=$r6, var3468=$z2, var2748=$r8, var3961=java.util.Vector, var3929=i0, var33=i3, var2409=$r9, var2377=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var813, r1=var869, r2=var689, null_type=var905, java.util.Stack=var3065, $r0=var3126, r3=var3481, $r4=var3553, java.lang.Object=var2344, java.util.StringTokenizer=var3841, $r5=var3202, $r7=var3998, java.io.File=var1566, $r6=var3476, $z2=var3468, $r8=var2748, java.util.Vector=var3961, i0=var3929, i3=var33, $r9=var2409, $r10=var2377}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r2 := @parameter0: java.lang.String;	$r0 = new java.util.Stack;	specialinvoke $r0.<java.util.Stack: void <init>()>();	r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.lang.String[] dissect(java.lang.String)>(r2);	$r4 = r3[0];	virtualinvoke $r0.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r4);	$r5 = new java.util.StringTokenizer;	$r7 = r3[1];	$r6 = <java.io.File: java.lang.String separator>;	specialinvoke $r5.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>($r7, $r6);	$z2 = virtualinvoke $r5.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z2 == 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	i0 = virtualinvoke $r0.<java.util.Stack: int size()>();	i3 = 0;	if i3 >= i0 goto $r9 = new java.io.File;	$r9 = new java.io.File;	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.File: void <init>(java.lang.String)>($r10);	return $r9
;block_num 5