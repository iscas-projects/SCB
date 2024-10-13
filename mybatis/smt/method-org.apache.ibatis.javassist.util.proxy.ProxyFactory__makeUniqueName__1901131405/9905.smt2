(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var205 0)
(declare-sort var1675 0)
(declare-sort var2126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1675_iterator/-912451715 (var1675) Iterator)
(declare-fun var2126_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var1675 var1675)
(declare-const var3507 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3507 null-String)))
(declare-const var866 var1675) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var866 null-var1675)))
(define-const var209 Iterator (var1675_iterator/-912451715 var866)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2809 Bool (var2126_makeUniqueName0/-733266458 var3507 var209)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var2809 1 0) 0)) ; Cond: $z0 == 0 
(define-const var834 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var834 999))) ; Negate: Cond: i0 >= 999  
(define-const var1088 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1088)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1088!1 String)
(assert (= var1088!1 ""))
(assert true)
(define-const var986 String (append/672562846 var1088!1 var3507)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1088!2 String)
(assert (= var1088!2 (str.++ var1088!1 var3507)))
(assert true)
(define-const var2702 String (append/-1001720160 var986 var834)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var986!1 String)
(assert (str.prefixof var986 var986!1))
(assert true)
(define-const var223 String (toString/-2075883882 var2702)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3163 Iterator (var1675_iterator/-912451715 var866)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2300 Bool (var2126_makeUniqueName0/-733266458 var223 var3163)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (not (= (ite var2300 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1675_iterator/-912451715=([java.util.List], java.util.Iterator), var2126_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3507=r0, var205=null_type, var1675=java.util.List, var866=r1, var209=$r2, var2126=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2809=$z0, var834=i0, var1088=$r4, var986=$r5, var2702=$r6, var223=r7, var3163=$r8, var2300=$z1}
; {r0=var3507, null_type=var205, java.util.List=var1675, r1=var866, $r2=var209, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2126, $z0=var2809, i0=var834, $r4=var1088, $r5=var986, $r6=var2702, r7=var223, $r8=var3163, $z1=var2300}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	return r7
;block_num 5