(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3278 0)
(declare-sort var2078 0)
(declare-sort var1214 0)
(declare-sort var2908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2078_contains/1636690605 (var2078 var1214) Bool)
(declare-fun cast-from-var3278-to-var1214 (var3278) var1214)
(declare-fun dump/1891027141 (var2908 Int var2078) String)
(declare-fun cast-from-var3278-to-var2908 (var3278) var2908)
(declare-fun insert/2110042883 (String Int Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun dumpPrefix/-1981802303 (var2908 Int) String)
(declare-fun insert/-583657224 (String Int String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3278 var3278)
(declare-const null-Int Int)
(declare-const null-var2078 var2078)
(declare-const var836 var3278) ; Statement: r1 := @this: org.javacc.parser.Sequence 
(assert (not (= var836 null-var3278)))
(declare-const var2146 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2146 null-Int)))
(declare-const var1460 var2078) ; Statement: r0 := @parameter1: java.util.Set 
(assert (not (= var1460 null-var2078)))
(define-const var3471 Bool (var2078_contains/1636690605 var1460 (cast-from-var3278-to-var1214 var836))) ; Statement: $z0 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r0.<java.util.Set: boolean add(java.lang.Object)>(r1) 
(assert (not (= (ite var3471 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3356 String (dump/1891027141 (cast-from-var3278-to-var2908 var836) 0 var1460)) ; Statement: $r10 = specialinvoke r1.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(0, r0) 
(assert true)
(define-const var3000 String (insert/2110042883 var3356 0 91)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer insert(int,char)>(0, 91) 
(assert true)
(define-const var509 String (append/1183289509 var3000 93)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var2796 String (dumpPrefix/-1981802303 (cast-from-var3278-to-var2908 var836) var2146)) ; Statement: $r12 = virtualinvoke r1.<org.javacc.parser.Sequence: java.lang.StringBuffer dumpPrefix(int)>(i0) 
(assert true)
(define-const var3966 String (insert/-583657224 var509 0 (cast-from-String-to-String var2796))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.CharSequence)>(0, $r12) 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2078_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var3278-to-var1214=([org.javacc.parser.Sequence], java.lang.Object), dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var3278-to-var2908=([org.javacc.parser.Sequence], org.javacc.parser.Expansion), insert/2110042883=([java.lang.StringBuffer, int, char], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), dumpPrefix/-1981802303=([org.javacc.parser.Expansion, int], java.lang.StringBuffer), insert/-583657224=([java.lang.StringBuffer, int, java.lang.CharSequence], java.lang.StringBuffer), cast-from-String-to-String=([java.lang.StringBuffer], java.lang.CharSequence)}
; {var3278=org.javacc.parser.Sequence, var836=r1, var2146=i0, var2078=java.util.Set, var1460=r0, var1214=java.lang.Object, var3471=$z0, var2908=org.javacc.parser.Expansion, var3356=$r10, var3000=$r11, var509=$r13, var2796=$r12, var3966=$r14}
; {org.javacc.parser.Sequence=var3278, r1=var836, i0=var2146, java.util.Set=var2078, r0=var1460, java.lang.Object=var1214, $z0=var3471, org.javacc.parser.Expansion=var2908, $r10=var3356, $r11=var3000, $r13=var509, $r12=var2796, $r14=var3966}
;seq <java.lang.StringBuffer: java.lang.StringBuffer insert(int,char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.CharSequence)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer insert(int,char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.CharSequence)>": 1}
;stmts r1 := @this: org.javacc.parser.Sequence;	i0 := @parameter0: int;	r0 := @parameter1: java.util.Set;	$z0 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto interfaceinvoke r0.<java.util.Set: boolean add(java.lang.Object)>(r1);	$r10 = specialinvoke r1.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(0, r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer insert(int,char)>(0, 91);	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r12 = virtualinvoke r1.<org.javacc.parser.Sequence: java.lang.StringBuffer dumpPrefix(int)>(i0);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.CharSequence)>(0, $r12);	return $r14
;block_num 2