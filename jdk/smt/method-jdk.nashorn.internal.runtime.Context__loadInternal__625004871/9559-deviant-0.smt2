(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3114 0)
(declare-sort var2184 0)
(declare-sort var1640 0)
(declare-sort var3771 0)
(declare-sort var267 0)
(declare-sort var146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2184-init () var2184)
(declare-fun <init>/-765892618 (var2184 String String) void)
(declare-fun var3771_doPrivileged/1828555841 (var267) var1640)
(declare-fun cast-from-var2184-to-var267 (var2184) var267)
(declare-fun cast-from-var1640-to-var146 (var1640) var146)
(declare-const null-String String)
(declare-const var3106 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3106 null-String)))
(declare-const var1769 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1769 null-String)))
(declare-const var1430 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1430 null-String)))
(assert true)
(define-const var2213 Bool (startsWith/-1785782452 var3106 var1769)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2213 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2901 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2901)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2901!1 String)
(assert (= var2901!1 ""))
(assert true)
(define-const var2723 String (append/672562846 var2901!1 var1430)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2901!2 String)
(assert (= var2901!2 (str.++ var2901!1 var1430)))
(assert true)
(define-const var1334 Int (length/-134980193 var1769)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var1334 0) (>= (str.len var3106) var1334)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2184-init=([], jdk.nashorn.internal.runtime.Context$3), <init>/-765892618=([jdk.nashorn.internal.runtime.Context$3, java.lang.String, java.lang.String], void), var3771_doPrivileged/1828555841=([java.security.PrivilegedAction], java.lang.Object), cast-from-var2184-to-var267=([jdk.nashorn.internal.runtime.Context$3], java.security.PrivilegedAction), cast-from-var1640-to-var146=([java.lang.Object], jdk.nashorn.internal.runtime.Source)}
; {var3106=r0, var3114=null_type, var1769=r1, var1430=r3, var2213=$z0, var2901=$r2, var2723=$r5, var1334=$i0, var2066=$r4, var1674=$r6, var3014=r7, var2184=jdk.nashorn.internal.runtime.Context$3, var1645=$r8, var1640=java.lang.Object, var3771=java.security.AccessController, var267=java.security.PrivilegedAction, var1609=$r9, var146=jdk.nashorn.internal.runtime.Source, var2664=$r10}
; {r0=var3106, null_type=var3114, r1=var1769, r3=var1430, $z0=var2213, $r2=var2901, $r5=var2723, $i0=var1334, $r4=var2066, $r6=var1674, r7=var3014, jdk.nashorn.internal.runtime.Context$3=var2184, $r8=var1645, java.lang.Object=var1640, java.security.AccessController=var3771, java.security.PrivilegedAction=var267, $r9=var1609, jdk.nashorn.internal.runtime.Source=var146, $r10=var2664}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 == 0 goto return null;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new jdk.nashorn.internal.runtime.Context$3;	specialinvoke $r8.<jdk.nashorn.internal.runtime.Context$3: void <init>(java.lang.String,java.lang.String)>(r7, r0);	$r9 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r8);	$r10 = (jdk.nashorn.internal.runtime.Source) $r9;	return $r10
;block_num 2