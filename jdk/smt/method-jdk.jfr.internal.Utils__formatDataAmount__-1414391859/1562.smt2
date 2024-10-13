(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2382 0)
(declare-sort var3693 0)
(declare-sort var3401 0)
(declare-sort var3530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3693_abs/-1279725619 (Int) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun var3693_log/-1364569445 (Float64) Float64)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun arr-var3401-init () (Array Int var3401))
(declare-fun var3693_pow/-1973469216 (Float64 Float64) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var3401 (Float64) var3401)
(declare-fun var3530_valueOf/-1186540555 (Int) var3530)
(declare-fun cast-from-var3530-to-var3401 (var3530) var3401)
(declare-fun String_format/1339386452 (String (Array Int var3401)) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3401__ (Array Int var3401))
(declare-const var1310 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1310 null-String)))
(declare-const var3098 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3098 null-Int)))
(define-const var3659 Int (var3693_abs/-1279725619 var3098)) ; Statement: $l1 = staticinvoke <java.lang.Math: long abs(long)>(l0) 
(define-const var1896 Float64 (cast-from-Int-to-Float64 var3659)) ; Statement: $d0 = (double) $l1 
(define-const var2956 Float64 (var3693_log/-1364569445 var1896)) ; Statement: $d2 = staticinvoke <java.lang.Math: double log(double)>($d0) 
(define-const var2538 Float64 (var3693_log/-1364569445 ((_ to_fp 11 53) #x4090000000000000))) ; Statement: $d1 = staticinvoke <java.lang.Math: double log(double)>(1024.0) 
(define-const var408 Float64 (fp.div roundNearestTiesToEven var2956 var2538)) ; Statement: $d3 = $d2 / $d1 
(define-const var786 Int (cast-from-Float64-to-Int var408)) ; Statement: i2 = (int) $d3 
(define-const var1875 String "kMGTPE") ; Statement: $r0 = "kMGTPE" 
(define-const var3105 Int (- var786 1)) ; Statement: $i3 = i2 - 1 
(assert (and true (and (> (str.len var1875) var3105) (<= 0 var3105))))
(define-const var3655 Int (charAt/698050440 var1875 var3105)) ; Statement: c4 = virtualinvoke $r0.<java.lang.String: char charAt(int)>($i3) 
(define-const var3335 (Array Int var3401) arr-var3401-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(define-const var1850 Float64 (cast-from-Int-to-Float64 var3098)) ; Statement: $d6 = (double) l0 
(define-const var1678 Float64 (cast-from-Int-to-Float64 var786)) ; Statement: $d4 = (double) i2 
(define-const var3535 Float64 (var3693_pow/-1973469216 ((_ to_fp 11 53) #x4090000000000000) var1678)) ; Statement: $d5 = staticinvoke <java.lang.Math: double pow(double,double)>(1024.0, $d4) 
(define-const var3415 Float64 (fp.div roundNearestTiesToEven var1850 var3535)) ; Statement: $d7 = $d6 / $d5 
(define-const var2105 Float64 (Float64_valueOf/679560954 var3415)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d7) 
(declare-const var3335!1 (Array Int var3401))
(assert (not (= var3335!1 null-__Array__Int__var3401__)))
(assert (= (select var3335!1 0) (cast-from-Float64-to-var3401 var2105))) ; Statement: $r2[0] = $r3 
(define-const var3224 var3530 (var3530_valueOf/-1186540555 var3655)) ; Statement: $r4 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c4) 
(declare-const var3335!2 (Array Int var3401))
(assert (not (= var3335!2 null-__Array__Int__var3401__)))
(assert (= (select var3335!2 1) (cast-from-var3530-to-var3401 var3224))) ; Statement: $r2[1] = $r4 
(define-const var179 String (String_format/1339386452 var1310 var3335!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, $r2) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3693_abs/-1279725619=([long], long), cast-from-Int-to-Float64=([long], double), var3693_log/-1364569445=([double], double), cast-from-Float64-to-Int=([double], int), charAt/698050440=([java.lang.String, int], char), arr-var3401-init=([], java.lang.Object[]), var3693_pow/-1973469216=([double, double], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var3401=([java.lang.Double], java.lang.Object), var3530_valueOf/-1186540555=([char], java.lang.Character), cast-from-var3530-to-var3401=([java.lang.Character], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1310=r1, var2382=null_type, var3098=l0, var3693=java.lang.Math, var3659=$l1, var1896=$d0, var2956=$d2, var2538=$d1, var408=$d3, var786=i2, var1875=$r0, var3105=$i3, var3655=c4, var3401=java.lang.Object, var3335=$r2, var1850=$d6, var1678=$d4, var3535=$d5, var3415=$d7, var2105=$r3, var3530=java.lang.Character, var3224=$r4, var179=$r5}
; {r1=var1310, null_type=var2382, l0=var3098, java.lang.Math=var3693, $l1=var3659, $d0=var1896, $d2=var2956, $d1=var2538, $d3=var408, i2=var786, $r0=var1875, $i3=var3105, c4=var3655, java.lang.Object=var3401, $r2=var3335, $d6=var1850, $d4=var1678, $d5=var3535, $d7=var3415, $r3=var2105, java.lang.Character=var3530, $r4=var3224, $r5=var179}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	l0 := @parameter1: long;	$l1 = staticinvoke <java.lang.Math: long abs(long)>(l0);	$d0 = (double) $l1;	$d2 = staticinvoke <java.lang.Math: double log(double)>($d0);	$d1 = staticinvoke <java.lang.Math: double log(double)>(1024.0);	$d3 = $d2 / $d1;	i2 = (int) $d3;	$r0 = "kMGTPE";	$i3 = i2 - 1;	c4 = virtualinvoke $r0.<java.lang.String: char charAt(int)>($i3);	$r2 = newarray (java.lang.Object)[2];	$d6 = (double) l0;	$d4 = (double) i2;	$d5 = staticinvoke <java.lang.Math: double pow(double,double)>(1024.0, $d4);	$d7 = $d6 / $d5;	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d7);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c4);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, $r2);	return $r5
;block_num 1