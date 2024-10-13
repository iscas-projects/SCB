(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1666 0)
(declare-sort var1810 0)
(declare-sort var76 0)
(declare-sort var3357 0)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1810_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var76-init () var76)
(declare-fun <init>/-325640736 (var76) void)
(declare-fun <init>/1228603609 (var76 Int) void)
(declare-fun var3357_add/328494887 (var3357 var1125) Bool)
(declare-fun cast-from-var76-to-var3357 (var76) var3357)
(declare-fun cast-from-String-to-var1125 (String) var1125)
(declare-fun var3357_iterator/-912451715 (var3357) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1975 ClassObject) ; Statement: r19 := @parameter0: java.lang.Class 
(assert (not (= var1975 null-ClassObject)))
(declare-const var3923 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3923 null-String)))
(declare-const var2615 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2615 null-Bool)))
(define-const var3991 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3991)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3991!1 String)
(assert (= var3991!1 ""))
(assert (and true (and (> (str.len var3923) 0) (<= 0 0))))
(define-const var3944 Int (charAt/698050440 var3923 0)) ; Statement: $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var2149 Int (var1810_toUpperCase/1913344327 var3944)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
(define-const var795 String (append/-1166366385 var3991!1 var2149)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3991!2 String)
(assert (str.prefixof var3991!1 var3991!2))
(assert (and true (and (>= 1 0) (>= (str.len var3923) 1))))
(define-const var3553 String (substring/850833817 var3923 1)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
(define-const var190 String (append/672562846 var795 var3553)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var795!1 String)
(assert (= var795!1 (str.++ var795 var3553)))
(assert true)
(define-const var2410 String (toString/-2075883882 var190)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3692 var76 var76-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3692)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3692!1 var76)
(define-const var3437 var76 var76-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/1228603609 var3437 2)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>(int)>(2) 

(declare-const var3437!1 var76)
(declare-const var1275 Int)
 ; Statement: if z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (= (ite var2615 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2044 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2044)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2044!1 String)
(assert (= var2044!1 ""))
(assert true)
(define-const var1329 String (append/672562846 var2044!1 "set")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set") 
(declare-const var2044!2 String)
(assert (= var2044!2 (str.++ var2044!1 "set")))
(assert true)
(define-const var2371 String (append/672562846 var1329 var2410)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1329!1 String)
(assert (= var1329!1 (str.++ var1329 var2410)))
(assert true)
(define-const var524 String (toString/-2075883882 var2371)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3357_add/328494887 (cast-from-var76-to-var3357 var3437!1) (cast-from-String-to-var1125 var524))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r27) 

(declare-const var3437!2 var76)
(declare-const var524!1 String)
 ; Statement: goto [?= $r28 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>()] 
(assert true) ; Non Conditional
(define-const var2451 Iterator (var3357_iterator/-912451715 (cast-from-var76-to-var3357 var3437!2))) ; Statement: $r28 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1904 Bool (Iterator_hasNext/-1669924200 var2451)) ; Statement: $z1 = interfaceinvoke $r28.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return $r6 
(assert (= (ite var1904 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), charAt/698050440=([java.lang.String, int], char), var1810_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var76-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), <init>/1228603609=([java.util.ArrayList, int], void), var3357_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var76-to-var3357=([java.util.ArrayList], java.util.List), cast-from-String-to-var1125=([java.lang.String], java.lang.Object), var3357_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1975=r19, var3923=r1, var1666=null_type, var2615=z0, var3991=$r0, var3944=$c0, var1810=java.lang.Character, var2149=$c1, var795=$r3, var3553=$r2, var190=$r4, var2410=r5, var76=java.util.ArrayList, var3692=$r6, var3437=$r7, var1275=2, var2044=$r24, var1329=$r25, var2371=$r26, var524=$r27, var3357=java.util.List, var1125=java.lang.Object, var2451=$r28, var1904=$z1}
; {r19=var1975, r1=var3923, null_type=var1666, z0=var2615, $r0=var3991, $c0=var3944, java.lang.Character=var1810, $c1=var2149, $r3=var795, $r2=var3553, $r4=var190, r5=var2410, java.util.ArrayList=var76, $r6=var3692, $r7=var3437, 2=var1275, $r24=var2044, $r25=var1329, $r26=var2371, $r27=var524, java.util.List=var3357, java.lang.Object=var1125, $r28=var2451, $z1=var1904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r19 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>(int)>(2);	if z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r27);	goto [?= $r28 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>()];	$r28 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r28.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return $r6;	return $r6
;block_num 5