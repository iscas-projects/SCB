(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var559 0)
(declare-sort var1951 0)
(declare-sort var1138 0)
(declare-sort var3052 0)
(declare-sort var1351 0)
(declare-sort var1205 0)
(declare-sort var3515 0)
(declare-sort var2101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1138) void)
(declare-fun cast-from-var559-to-var1138 (var559) var1138)
(declare-fun split/-545181050 (var3052 String) var1351)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1205_copyOf/-499523795 (var1351) var1205)
(declare-fun reverse/-388801467 (var1205) var1205)
(declare-fun parts/-1381501855 (var559) var1205)
(declare-fun get/-1216255739 (var3515 Int) var1138)
(declare-fun cast-from-var1205-to-var3515 (var1205) var3515)
(declare-fun cast-from-var1138-to-String (var1138) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2101_isUpperCase/-390837851 (Int) Bool)
(declare-fun capitalize/-1381501855 (var559) Bool)
(declare-const null-var559 var559)
(declare-const null-String String)
(declare-const var559-DOT_SPLITTER var3052)
(declare-const var3183 var559) ; Statement: r0 := @this: com.google.javascript.refactoring.RequireAliasGenerator 
(assert (not (= var3183 null-var559)))
(declare-const var1799 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1799 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var559-to-var1138 var3183))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3183!1 var559)
(define-const var3790 var3052 var559-DOT_SPLITTER) ; Statement: $r2 = <com.google.javascript.refactoring.RequireAliasGenerator: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert true)
(define-const var2246 var1351 (split/-545181050 var3790 (cast-from-String-to-String var1799))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r1) 
(define-const var987 var1205 (var1205_copyOf/-499523795 var2246)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r3) 
(assert true)
(define-const var684 var1205 (reverse/-388801467 var987)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList reverse()>() 
(declare-const var3183!2 var559)
(assert (not (= var3183!2 null-var559)))
(assert (= (parts/-1381501855 var3183!2) var684)) ; Statement: r0.<com.google.javascript.refactoring.RequireAliasGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5 
(define-const var630 var1205 (parts/-1381501855 var3183!2)) ; Statement: $r6 = r0.<com.google.javascript.refactoring.RequireAliasGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(assert true)
(define-const var2149 var1138 (get/-1216255739 (cast-from-var1205-to-var3515 var630) 0)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: java.lang.Object get(int)>(0) 
(define-const var3004 String (cast-from-var1138-to-String var2149)) ; Statement: $r8 = (java.lang.String) $r7 
(assert (and true (and (> (str.len var3004) 0) (<= 0 0))))
(define-const var1465 Int (charAt/698050440 var3004 0)) ; Statement: $c0 = virtualinvoke $r8.<java.lang.String: char charAt(int)>(0) 
(define-const var3987 Bool (var2101_isUpperCase/-390837851 var1465)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: boolean isUpperCase(char)>($c0) 
(declare-const var3183!3 var559)
(assert (not (= var3183!3 null-var559)))
(assert (= (capitalize/-1381501855 var3183!3) var3987)) ; Statement: r0.<com.google.javascript.refactoring.RequireAliasGenerator: boolean capitalize> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var559-to-var1138=([com.google.javascript.refactoring.RequireAliasGenerator], java.lang.Object), split/-545181050=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.lang.Iterable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1205_copyOf/-499523795=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), reverse/-388801467=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), parts/-1381501855=([com.google.javascript.refactoring.RequireAliasGenerator], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1205-to-var3515=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List), cast-from-var1138-to-String=([java.lang.Object], java.lang.String), charAt/698050440=([java.lang.String, int], char), var2101_isUpperCase/-390837851=([char], boolean), capitalize/-1381501855=([com.google.javascript.refactoring.RequireAliasGenerator], boolean)}
; {var559=com.google.javascript.refactoring.RequireAliasGenerator, var3183=r0, var1799=r1, var1951=null_type, var1138=java.lang.Object, var3052=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var3790=$r2, var1351=java.lang.Iterable, var2246=$r3, var1205=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var987=$r4, var684=$r5, var630=$r6, var3515=java.util.List, var2149=$r7, var3004=$r8, var1465=$c0, var2101=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var3987=$z0}
; {com.google.javascript.refactoring.RequireAliasGenerator=var559, r0=var3183, r1=var1799, null_type=var1951, java.lang.Object=var1138, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var3052, $r2=var3790, java.lang.Iterable=var1351, $r3=var2246, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1205, $r4=var987, $r5=var684, $r6=var630, java.util.List=var3515, $r7=var2149, $r8=var3004, $c0=var1465, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var2101, $z0=var3987}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.refactoring.RequireAliasGenerator;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = <com.google.javascript.refactoring.RequireAliasGenerator: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r1);	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r3);	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList reverse()>();	r0.<com.google.javascript.refactoring.RequireAliasGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5;	$r6 = r0.<com.google.javascript.refactoring.RequireAliasGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: java.lang.Object get(int)>(0);	$r8 = (java.lang.String) $r7;	$c0 = virtualinvoke $r8.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: boolean isUpperCase(char)>($c0);	r0.<com.google.javascript.refactoring.RequireAliasGenerator: boolean capitalize> = $z0;	return
;block_num 1