(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2657 0)
(declare-sort var54 0)
(declare-sort var110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var54_checkArgument/1031231112 (Bool String var110) void)
(declare-fun cast-from-String-to-var110 (String) var110)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2046 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2046 null-String)))
(assert (and true (and (> (str.len var2046) 0) (<= 0 0))))
(define-const var200 Int (charAt/698050440 var2046 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3721 Int (cast-from-Int-to-Int var200)) ; Statement: $i11 = (int) $c0 
 ; Statement: if $i11 != 91 goto $z1 = 0 
(assert (not (not (= var3721 91)))) ; Negate: Cond: $i11 != 91  
(define-const var2940 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Bracketed host-port string must start with a bracket: %s", r0)] 
(assert true) ; Non Conditional
;(assert (var54_checkArgument/1031231112 var2940 "Bracketed host-port string must start with a bracket: %s" (cast-from-String-to-var110 var2046))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Bracketed host-port string must start with a bracket: %s", r0) 

(declare-const var2940!1 Bool)
(declare-const var2791 String)
(declare-const var2046!1 String)
(assert true)
(define-const var3771 Int (indexOf/-1037706067 var2046!1 58)) ; Statement: $i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
(assert true)
(define-const var899 Int (lastIndexOf/-1292097097 var2046!1 93)) ; Statement: $i6 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(93) 
(define-const var1193 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if $i5 <= $i13 goto $z2 = 0 
(assert (<= var3771 var1193)) ; Cond: $i5 <= $i13 
(define-const var2432 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var54_checkArgument/1031231112 var2432 "Invalid bracketed host/port: %s" (cast-from-String-to-var110 var2046!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Invalid bracketed host/port: %s", r0) 

(declare-const var2432!1 Bool)
(declare-const var2023 String)
(declare-const var2046!2 String)
(assert (not (and true (and (>= 1 0) (>= (str.len var2046!2) var899) (>= var899 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var54_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var110=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var2046=r0, var2657=null_type, var200=$c0, var3721=$i11, var2940=$z1, var54=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var110=java.lang.Object, var2791="Bracketed host-port string must start with a bracket: %s", var3771=$i5, var899=$i6, var1193=$i13, var2432=$z2, var2023="Invalid bracketed host/port: %s", var3342=$r4, var566=$i7, var2652=$i8, var957=$r3}
; {r0=var2046, null_type=var2657, $c0=var200, $i11=var3721, $z1=var2940, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var54, java.lang.Object=var110, "Bracketed host-port string must start with a bracket: %s"=var2791, $i5=var3771, $i6=var899, $i13=var1193, $z2=var2432, "Invalid bracketed host/port: %s"=var2023, $r4=var3342, $i7=var566, $i8=var2652, $r3=var957}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i11 = (int) $c0;	if $i11 != 91 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Bracketed host-port string must start with a bracket: %s", r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Bracketed host-port string must start with a bracket: %s", r0);	$i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	$i6 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(93);	$i13 = (int) -1;	if $i5 <= $i13 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Invalid bracketed host/port: %s", r0);	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i6);	$i7 = $i6 + 1;	$i8 = virtualinvoke r0.<java.lang.String: int length()>();	if $i7 != $i8 goto $i1 = $i6 + 1;	$r3 = newarray (java.lang.String)[2];	$r3[0] = $r4;	$r3[1] = "";	return $r3
;block_num 6