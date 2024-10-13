(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var615 0)
(declare-sort var152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun block/794932155 (var615) var152)
(declare-fun position/1182417094 (var152) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun parent/1646339836 (var615) var615)
(declare-fun children/1646339836 (var615) (Array Int var615))
(declare-fun getLength-Arr-var615-1 ((Array Int var615)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var615 var615)
(declare-const var127 var615) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node 
(assert (not (= var127 null-var615)))
(define-const var3978 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3978)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3978!1 String)
(assert (= var3978!1 ""))
(assert true)
(define-const var3970 String (append/672562846 var3978!1 "Node[pos=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Node[pos=") 
(declare-const var3978!2 String)
(assert (= var3978!2 (str.++ var3978!1 "Node[pos=")))
(assert true)
(define-const var1254 var152 (block/794932155 var127)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block block()>() 
(assert true)
(define-const var3402 Int (position/1182417094 var1254)) ; Statement: $i0 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: int position()>() 
(assert true)
;(assert (append/-1001720160 var3970 var3402)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3970!1 String)
(assert (str.prefixof var3970 var3970!1))
(assert true)
;(assert (append/672562846 var3978!2 ", parent=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", parent=") 
(declare-const var3978!3 String)
(assert (= var3978!3 (str.++ var3978!2 ", parent=")))
(define-const var695 var615 (parent/1646339836 var127)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent> 
 ; Statement: if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent> 
(assert (not (not (= var695 null-var615)))) ; Negate: Cond: $r4 != null  
(define-const var1991 String "*") ; Statement: $r12 = "*" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3978!3 var1991)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3978!4 String)
(assert (= var3978!4 (str.++ var3978!3 var1991)))
(assert true)
;(assert (append/672562846 var3978!4 ", children{")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", children{") 
(declare-const var3978!5 String)
(assert (= var3978!5 (str.++ var3978!4 ", children{")))
(define-const var1142 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2357 (Array Int var615) (children/1646339836 var127)) ; Statement: $r13 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[] children> 
(define-const var3764 Int (getLength-Arr-var615-1 var2357)) ; Statement: $i4 = lengthof $r13 
 ; Statement: if i3 >= $i4 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]") 
(assert (>= var1142 var3764)) ; Cond: i3 >= $i4 
(assert true)
;(assert (append/672562846 var3978!5 "}]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]") 
(declare-const var3978!6 String)
(assert (= var3978!6 (str.++ var3978!5 "}]")))
(assert true)
(define-const var516 String (toString/-2075883882 var3978!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), block/794932155=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node], org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block), position/1182417094=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), parent/1646339836=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node], org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node), children/1646339836=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node], org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[]), getLength-Arr-var615-1=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var615=org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node, var127=r1, var3978=$r0, var3970=$r3, var152=org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block, var1254=$r2, var3402=$i0, var695=$r4, var1991=$r12, var1142=i3, var2357=$r13, var3764=$i4, var516=$r7}
; {org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node=var615, r1=var127, $r0=var3978, $r3=var3970, org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block=var152, $r2=var1254, $i0=var3402, $r4=var695, $r12=var1991, i3=var1142, $r13=var2357, $i4=var3764, $r7=var516}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Node[pos=");	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block block()>();	$i0 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: int position()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", parent=");	$r4 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent>;	if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node parent>;	$r12 = "*";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", children{");	i3 = 0;	$r13 = r1.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Node[] children>;	$i4 = lengthof $r13;	if i3 >= $i4 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5