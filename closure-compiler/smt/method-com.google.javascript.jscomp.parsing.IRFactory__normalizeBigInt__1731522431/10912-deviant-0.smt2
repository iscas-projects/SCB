(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2947 0)
(declare-sort var439 0)
(declare-sort var311 0)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var439) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var311_checkState/1431124798 (Bool) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2325-init () var2325)
(declare-fun <init>/-169914562 (var2325 String) void)
(declare-const null-var2947 var2947)
(declare-const null-var439 var439)
(declare-const var3121 var2947) ; Statement: r4 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var3121 null-var2947)))
(declare-const var3774 var439) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var3774 null-var439)))
(define-const var3912 String (value/-732511682 var3774)) ; Statement: r14 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var3611 Int (indexOf/-1037706067 var3912 110)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(110) 
(assert (not (and true (and (>= 0 0) (>= (str.len var3912) var3611) (>= var3611 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var311_checkState/1431124798=([boolean], void), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2325-init=([], java.math.BigInteger), <init>/-169914562=([java.math.BigInteger, java.lang.String], void)}
; {var2947=com.google.javascript.jscomp.parsing.IRFactory, var3121=r4, var439=com.google.javascript.jscomp.parsing.parser.LiteralToken, var3774=r0, var3912=r14, var3611=$i0, var1198=r15, var1621=$z0, var3957=$i5, var2215=$z1, var311=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var866=$c1, var1419=$i7, var2925=$z2, var1299=$c6, var3237=$i9, var2325=java.math.BigInteger, var967=$r21}
; {com.google.javascript.jscomp.parsing.IRFactory=var2947, r4=var3121, com.google.javascript.jscomp.parsing.parser.LiteralToken=var439, r0=var3774, r14=var3912, $i0=var3611, r15=var1198, $z0=var1621, $i5=var3957, $z1=var2215, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var311, $c1=var866, $i7=var1419, $z2=var2925, $c6=var1299, $i9=var3237, java.math.BigInteger=var2325, $r21=var967}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	r14 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(110);	r15 = virtualinvoke r14.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	$z0 = virtualinvoke r15.<java.lang.String: boolean contains(java.lang.CharSequence)>("_");	if $z0 == 0 goto $i5 = virtualinvoke r15.<java.lang.String: int length()>();	$i5 = virtualinvoke r15.<java.lang.String: int length()>();	if $i5 <= 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$c1 = virtualinvoke r15.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c1;	if $i7 == 45 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$c6 = virtualinvoke r15.<java.lang.String: char charAt(int)>(0);	$i9 = (int) $c6;	if $i9 != 48 goto $r21 = new java.math.BigInteger;	$r21 = new java.math.BigInteger;	specialinvoke $r21.<java.math.BigInteger: void <init>(java.lang.String)>(r15);	return $r21
;block_num 7