(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3271_getStringValue/-609363705 (var3271) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-var3271 var3271)
(declare-const null-Int Int)
(declare-const var3640 var3271) ; Statement: r0 := @parameter0: org.apache.xmlbeans.XmlAnySimpleType 
(assert (not (= var3640 null-var3271)))
(declare-const var1352 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1352 null-Int)))
(define-const var831 String (var3271_getStringValue/-609363705 var3640)) ; Statement: r1 = interfaceinvoke r0.<org.apache.xmlbeans.XmlAnySimpleType: java.lang.String getStringValue()>() 
(assert true)
(define-const var2523 Bool (endsWith/985337093 var831 "%")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("%") 
 ; Statement: if $z0 == 0 goto $i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r1) 
(assert (not (= (ite var2523 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3569 Int (length/-134980193 var831)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3998 Int (- var3569 1)) ; Statement: $i4 = $i3 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var831) var3998) (>= var3998 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3271_getStringValue/-609363705=([org.apache.xmlbeans.XmlAnySimpleType], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int)}
; {var3271=org.apache.xmlbeans.XmlAnySimpleType, var3640=r0, var1352=i0, var831=r1, var2523=$z0, var3569=$i3, var3998=$i4, var2008=$r2, var1761=$i5, var3679=$i6}
; {org.apache.xmlbeans.XmlAnySimpleType=var3271, r0=var3640, i0=var1352, r1=var831, $z0=var2523, $i3=var3569, $i4=var3998, $r2=var2008, $i5=var1761, $i6=var3679}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: org.apache.xmlbeans.XmlAnySimpleType;	i0 := @parameter1: int;	r1 = interfaceinvoke r0.<org.apache.xmlbeans.XmlAnySimpleType: java.lang.String getStringValue()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("%");	if $z0 == 0 goto $i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r1);	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 - 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i4);	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	$i6 = $i5 * 1000;	return $i6
;block_num 2