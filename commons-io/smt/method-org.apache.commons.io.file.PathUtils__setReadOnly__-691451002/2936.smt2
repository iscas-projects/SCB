(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1334 0)
(declare-sort var3957 0)
(declare-sort var3618 0)
(declare-sort var3111 0)
(declare-sort var1705 0)
(declare-sort var3457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3111_getParent/-232143947 (var1334) var1334)
(declare-fun var3111_isPosix/661901534 (var1334 (Array Int var3957)) Bool)
(declare-fun var3618-init () var3618)
(declare-fun arr-var1705-init () (Array Int var1705))
(declare-fun cast-from-var1334-to-var1705 (var1334) var1705)
(declare-fun var3457_toString/-575966009 ((Array Int var1705)) String)
(declare-fun cast-from-__Array__Int__var3957__-to-__Array__Int__var1705__ ((Array Int var3957)) (Array Int var1705))
(declare-fun cast-from-String-to-var1705 (String) var1705)
(declare-fun String_format/1339386452 (String (Array Int var1705)) String)
(declare-fun <init>/-1557872005 (var3618 String) void)
(declare-const null-var1334 var1334)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var3957__ (Array Int var3957))
(declare-const null-var3618 var3618)
(declare-const null-__Array__Int__var1705__ (Array Int var1705))
(declare-const var1507 var1334) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var1507 null-var1334)))
(declare-const var1297 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1297 null-Bool)))
(declare-const var2975 (Array Int var3957)) ; Statement: r1 := @parameter2: java.nio.file.LinkOption[] 
(assert (not (= var2975 null-__Array__Int__var3957__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2132 var3618) ; Statement: $r6 := @caughtexception 
(assert (not (= var2132 null-var3618)))
(assert true) ; Non Conditional
(define-const var1065 var1334 (var3111_getParent/-232143947 var1507)) ; Statement: $r7 = staticinvoke <org.apache.commons.io.file.PathUtils: java.nio.file.Path getParent(java.nio.file.Path)>(r0) 
(define-const var1774 Bool (var3111_isPosix/661901534 var1065 var2975)) ; Statement: $z2 = staticinvoke <org.apache.commons.io.file.PathUtils: boolean isPosix(java.nio.file.Path,java.nio.file.LinkOption[])>($r7, r1) 
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (not (= (ite var1774 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3447 var3618 var3618-init) ; Statement: $r2 = new java.io.IOException 
(define-const var1767 (Array Int var1705) arr-var1705-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(declare-const var1767!1 (Array Int var1705))
(assert (not (= var1767!1 null-__Array__Int__var1705__)))
(assert (= (select var1767!1 0) (cast-from-var1334-to-var1705 var1507))) ; Statement: $r3[0] = r0 
(define-const var839 String (var3457_toString/-575966009 (cast-from-__Array__Int__var3957__-to-__Array__Int__var1705__ var2975))) ; Statement: $r4 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>(r1) 
(declare-const var1767!2 (Array Int var1705))
(assert (not (= var1767!2 null-__Array__Int__var1705__)))
(assert (= (select var1767!2 1) (cast-from-String-to-var1705 var839))) ; Statement: $r3[1] = $r4 
(define-const var277 String (String_format/1339386452 "DOS or POSIX file operations not available for \u0027%s\u0027 %s" var1767!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("DOS or POSIX file operations not available for \'%s\' %s", $r3) 
(assert true)
;(assert (<init>/-1557872005 var3447 var277)) ; Statement: specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var3447!1 var3618)
(declare-const var277!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3111_getParent/-232143947=([java.nio.file.Path], java.nio.file.Path), var3111_isPosix/661901534=([java.nio.file.Path, java.nio.file.LinkOption[]], boolean), var3618-init=([], java.io.IOException), arr-var1705-init=([], java.lang.Object[]), cast-from-var1334-to-var1705=([java.nio.file.Path], java.lang.Object), var3457_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var3957__-to-__Array__Int__var1705__=([java.nio.file.LinkOption[]], java.lang.Object[]), cast-from-String-to-var1705=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1334=java.nio.file.Path, var1507=r0, var1297=z0, var3957=java.nio.file.LinkOption, var2975=r1, var3618=java.io.IOException, var2132=$r6, var3111=org.apache.commons.io.file.PathUtils, var1065=$r7, var1774=$z2, var3447=$r2, var1705=java.lang.Object, var1767=$r3, var3457=java.util.Arrays, var839=$r4, var277=$r5}
; {java.nio.file.Path=var1334, r0=var1507, z0=var1297, java.nio.file.LinkOption=var3957, r1=var2975, java.io.IOException=var3618, $r6=var2132, org.apache.commons.io.file.PathUtils=var3111, $r7=var1065, $z2=var1774, $r2=var3447, java.lang.Object=var1705, $r3=var1767, java.util.Arrays=var3457, $r4=var839, $r5=var277}
;seq <java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.nio.file.Path;	z0 := @parameter1: boolean;	r1 := @parameter2: java.nio.file.LinkOption[];	$r6 := @caughtexception;	$r7 = staticinvoke <org.apache.commons.io.file.PathUtils: java.nio.file.Path getParent(java.nio.file.Path)>(r0);	$z2 = staticinvoke <org.apache.commons.io.file.PathUtils: boolean isPosix(java.nio.file.Path,java.nio.file.LinkOption[])>($r7, r1);	if $z2 != 0 goto (branch);	$r2 = new java.io.IOException;	$r3 = newarray (java.lang.Object)[2];	$r3[0] = r0;	$r4 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>(r1);	$r3[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("DOS or POSIX file operations not available for \'%s\' %s", $r3);	specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r2
;block_num 4