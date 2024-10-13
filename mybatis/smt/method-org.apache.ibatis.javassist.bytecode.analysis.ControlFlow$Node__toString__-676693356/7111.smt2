(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3798 0)
(declare-sort var941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun block/794932155 (var3798) var941)
(declare-fun position/1182417094 (var941) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun parent/1646339836 (var3798) var3798)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun children/1646339836 (var3798) (Array Int var3798))
(declare-fun getLength-Arr-var3798-1 ((Array Int var3798)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3798 var3798)
(declare-const var3244 var3798) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node 
(assert (not (= var3244 null-var3798)))
(define-const var2348 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2348)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2348!1 String)
(assert (= var2348!1 ""))
(assert true)
(define-const var43 String (append/672562846 var2348!1 "Node[pos=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Node[pos=") 
(declare-const var2348!2 String)
(assert (= var2348!2 (str.++ var2348!1 "Node[pos=")))
(assert true)
(define-const var3981 var941 (block/794932155 var3244)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block block()>() 
(assert true)
(define-const var1126 Int (position/1182417094 var3981)) ; Statement: $i0 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: int position()>() 
(assert true)
;(assert (append/-1001720160 var43 var1126)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var43!1 String)
(assert (str.prefixof var43 var43!1))
(assert true)
;(assert (append/672562846 var2348!2 ", parent=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", parent=") 
(declare-const var2348!3 String)
(assert (= var2348!3 (str.++ var2348!2 ", parent=")))
(define-const var3325 var3798 (parent/1646339836 var3244)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent> 
 ; Statement: if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent> 
(assert (not (= var3325 null-var3798))) ; Cond: $r4 != null 
(define-const var3310 var3798 (parent/1646339836 var3244)) ; Statement: $r5 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent> 
(assert true)
(define-const var2254 var941 (block/794932155 var3310)) ; Statement: $r6 = virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block block()>() 
(assert true)
(define-const var1970 Int (position/1182417094 var2254)) ; Statement: $i1 = virtualinvoke $r6.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: int position()>() 
(define-const var2013 String (Int_toString/1350422511 var1970)) ; Statement: $r12 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i1) 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2348!3 var2013)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2348!4 String)
(assert (= var2348!4 (str.++ var2348!3 var2013)))
(assert true)
;(assert (append/672562846 var2348!4 ", children{")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", children{") 
(declare-const var2348!5 String)
(assert (= var2348!5 (str.++ var2348!4 ", children{")))
(define-const var465 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3635 (Array Int var3798) (children/1646339836 var3244)) ; Statement: $r13 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[] children> 
(define-const var3794 Int (getLength-Arr-var3798-1 var3635)) ; Statement: $i4 = lengthof $r13 
 ; Statement: if i3 >= $i4 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]") 
(assert (>= var465 var3794)) ; Cond: i3 >= $i4 
(assert true)
;(assert (append/672562846 var2348!5 "}]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]") 
(declare-const var2348!6 String)
(assert (= var2348!6 (str.++ var2348!5 "}]")))
(assert true)
(define-const var105 String (toString/-2075883882 var2348!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), block/794932155=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node], org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block), position/1182417094=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), parent/1646339836=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node], org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node), Int_toString/1350422511=([int], java.lang.String), children/1646339836=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node], org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[]), getLength-Arr-var3798-1=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3798=org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node, var3244=r1, var2348=$r0, var43=$r3, var941=org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block, var3981=$r2, var1126=$i0, var3325=$r4, var3310=$r5, var2254=$r6, var1970=$i1, var2013=$r12, var465=i3, var3635=$r13, var3794=$i4, var105=$r7}
; {org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node=var3798, r1=var3244, $r0=var2348, $r3=var43, org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block=var941, $r2=var3981, $i0=var1126, $r4=var3325, $r5=var3310, $r6=var2254, $i1=var1970, $r12=var2013, i3=var465, $r13=var3635, $i4=var3794, $r7=var105}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Node[pos=");	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block block()>();	$i0 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: int position()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", parent=");	$r4 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent>;	if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent>;	$r5 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent>;	$r6 = virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block block()>();	$i1 = virtualinvoke $r6.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: int position()>();	$r12 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", children{");	i3 = 0;	$r13 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[] children>;	$i4 = lengthof $r13;	if i3 >= $i4 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5