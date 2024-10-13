(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3744 0)
(declare-sort var310 0)
(declare-sort var1877 0)
(declare-sort var3083 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var310) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1877_checkState/1431124798 (Bool) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3083-init () var3083)
(declare-fun <init>/-169914562 (var3083 String) void)
(declare-const null-var3744 var3744)
(declare-const null-var310 var310)
(declare-const var91 var3744) ; Statement: r4 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var91 null-var3744)))
(declare-const var1350 var310) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var1350 null-var310)))
(define-const var3079 String (value/-732511682 var1350)) ; Statement: r14 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var3111 Int (indexOf/-1037706067 var3079 110)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(110) 
(assert (and true (and (>= 0 0) (>= (str.len var3079) var3111) (>= var3111 0))))
(define-const var2614 String (substring/-1240304868 var3079 0 var3111)) ; Statement: r15 = virtualinvoke r14.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
(assert true)
(define-const var5 Bool (contains/1009244746 var2614 (cast-from-String-to-String "_"))) ; Statement: $z0 = virtualinvoke r15.<java.lang.String: boolean contains(java.lang.CharSequence)>("_") 
 ; Statement: if $z0 == 0 goto $i5 = virtualinvoke r15.<java.lang.String: int length()>() 
(assert (= (ite var5 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3184 Int (length/-134980193 var2614)) ; Statement: $i5 = virtualinvoke r15.<java.lang.String: int length()>() 
 ; Statement: if $i5 <= 0 goto $z1 = 0 
(assert (not (<= var3184 0))) ; Negate: Cond: $i5 <= 0  
(define-const var3628 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var1877_checkState/1431124798 var3628)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3628!1 Bool)
(assert (and true (and (> (str.len var2614) 0) (<= 0 0))))
(define-const var2717 Int (charAt/698050440 var2614 0)) ; Statement: $c1 = virtualinvoke r15.<java.lang.String: char charAt(int)>(0) 
(define-const var3871 Int (cast-from-Int-to-Int var2717)) ; Statement: $i7 = (int) $c1 
 ; Statement: if $i7 == 45 goto $z2 = 0 
(assert (= var3871 45)) ; Cond: $i7 == 45 
(define-const var246 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var1877_checkState/1431124798 var246)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var246!1 Bool)
(assert (not (and true (and (> (str.len var2614) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var1877_checkState/1431124798=([boolean], void), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3083-init=([], java.math.BigInteger), <init>/-169914562=([java.math.BigInteger, java.lang.String], void)}
; {var3744=com.google.javascript.jscomp.parsing.IRFactory, var91=r4, var310=com.google.javascript.jscomp.parsing.parser.LiteralToken, var1350=r0, var3079=r14, var3111=$i0, var2614=r15, var5=$z0, var3184=$i5, var3628=$z1, var1877=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2717=$c1, var3871=$i7, var246=$z2, var2412=$c6, var3804=$i9, var3083=java.math.BigInteger, var1563=$r21}
; {com.google.javascript.jscomp.parsing.IRFactory=var3744, r4=var91, com.google.javascript.jscomp.parsing.parser.LiteralToken=var310, r0=var1350, r14=var3079, $i0=var3111, r15=var2614, $z0=var5, $i5=var3184, $z1=var3628, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1877, $c1=var2717, $i7=var3871, $z2=var246, $c6=var2412, $i9=var3804, java.math.BigInteger=var3083, $r21=var1563}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	r14 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(110);	r15 = virtualinvoke r14.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	$z0 = virtualinvoke r15.<java.lang.String: boolean contains(java.lang.CharSequence)>("_");	if $z0 == 0 goto $i5 = virtualinvoke r15.<java.lang.String: int length()>();	$i5 = virtualinvoke r15.<java.lang.String: int length()>();	if $i5 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$c1 = virtualinvoke r15.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c1;	if $i7 == 45 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$c6 = virtualinvoke r15.<java.lang.String: char charAt(int)>(0);	$i9 = (int) $c6;	if $i9 != 48 goto $r21 = new java.math.BigInteger;	$r21 = new java.math.BigInteger;	specialinvoke $r21.<java.math.BigInteger: void <init>(java.lang.String)>(r15);	return $r21
;block_num 7