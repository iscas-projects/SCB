(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var637 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var637 null-String)))
(declare-const var3901 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var3901 null-ClassObject)))
(define-const var1931 ClassObject var3901) ; Statement: r10 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var2857 Bool (isPrimitive/-473230874 var1931)) ; Statement: $z0 = virtualinvoke r10.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>() 
(assert (= (ite var2857 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3024 Bool (isArray/1369458484 var1931)) ; Statement: $z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76) 
(assert (= (ite var3024 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/1183289509 var637 76)) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76) 

(declare-const var637!1 String)
(declare-const var2174 Int)
(assert true)
(define-const var1021 String (getName/-1958580599 var1931)) ; Statement: r11 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3380 Int (length/-134980193 var1021)) ; Statement: i0 = virtualinvoke r11.<java.lang.String: int length()>() 
(define-const var2054 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59) 
(assert (>= var2054 var3380)) ; Cond: i3 >= i0 
(assert true)
;(assert (append/1183289509 var637!1 59)) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59) 

(declare-const var637!2 String)
(declare-const var2487 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), isArray/1369458484=([java.lang.Class], boolean), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getName/-1958580599=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var637=r1, var3901=r0, var1931=r10, var2857=$z0, var3024=$z1, var2174=76, var1021=r11, var3380=i0, var2054=i3, var2487=59}
; {r1=var637, r0=var3901, r10=var1931, $z0=var2857, $z1=var3024, 76=var2174, r11=var1021, i0=var3380, i3=var2054, 59=var2487}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.Class;	r10 = r0;	$z0 = virtualinvoke r10.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>();	$z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>();	if $z1 == 0 goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76);	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76);	r11 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r11.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59);	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59);	return
;block_num 6