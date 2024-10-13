(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3583 0)
(declare-sort var2112 0)
(declare-sort var3511 0)
(declare-sort var2921 0)
(declare-sort var580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2112_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3511-init () var3511)
(declare-fun <init>/-325640736 (var3511) void)
(declare-fun <init>/1228603609 (var3511 Int) void)
(declare-fun var2921_add/328494887 (var2921 var580) Bool)
(declare-fun cast-from-var3511-to-var2921 (var3511) var2921)
(declare-fun cast-from-String-to-var580 (String) var580)
(declare-fun var2921_iterator/-912451715 (var2921) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var483 ClassObject) ; Statement: r19 := @parameter0: java.lang.Class 
(assert (not (= var483 null-ClassObject)))
(declare-const var2697 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2697 null-String)))
(declare-const var1823 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1823 null-Bool)))
(define-const var3017 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3017)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3017!1 String)
(assert (= var3017!1 ""))
(assert (and true (and (> (str.len var2697) 0) (<= 0 0))))
(define-const var3404 Int (charAt/698050440 var2697 0)) ; Statement: $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var2015 Int (var2112_toUpperCase/1913344327 var3404)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
(define-const var2103 String (append/-1166366385 var3017!1 var2015)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3017!2 String)
(assert (str.prefixof var3017!1 var3017!2))
(assert (and true (and (>= 1 0) (>= (str.len var2697) 1))))
(define-const var37 String (substring/850833817 var2697 1)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
(define-const var1898 String (append/672562846 var2103 var37)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2103!1 String)
(assert (= var2103!1 (str.++ var2103 var37)))
(assert true)
(define-const var643 String (toString/-2075883882 var1898)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var800 var3511 var3511-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var800)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var800!1 var3511)
(define-const var3009 var3511 var3511-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/1228603609 var3009 2)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>(int)>(2) 

(declare-const var3009!1 var3511)
(declare-const var1705 Int)
 ; Statement: if z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (= (ite var1823 1 0) 0)) ; Cond: z0 == 0 
(define-const var214 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var214)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var214!1 String)
(assert (= var214!1 ""))
(assert true)
(define-const var1049 String (append/672562846 var214!1 "is")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("is") 
(declare-const var214!2 String)
(assert (= var214!2 (str.++ var214!1 "is")))
(assert true)
(define-const var3630 String (append/672562846 var1049 var643)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1049!1 String)
(assert (= var1049!1 (str.++ var1049 var643)))
(assert true)
(define-const var605 String (toString/-2075883882 var3630)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2921_add/328494887 (cast-from-var3511-to-var2921 var3009!1) (cast-from-String-to-var580 var605))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var3009!2 var3511)
(declare-const var605!1 String)
(define-const var763 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var763)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var763!1 String)
(assert (= var763!1 ""))
(assert true)
(define-const var822 String (append/672562846 var763!1 "get")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var763!2 String)
(assert (= var763!2 (str.++ var763!1 "get")))
(assert true)
(define-const var3896 String (append/672562846 var822 var643)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var822!1 String)
(assert (= var822!1 (str.++ var822 var643)))
(assert true)
(define-const var2166 String (toString/-2075883882 var3896)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2921_add/328494887 (cast-from-var3511-to-var2921 var3009!2) (cast-from-String-to-var580 var2166))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var3009!3 var3511)
(declare-const var2166!1 String)
(assert true) ; Non Conditional
(define-const var813 Iterator (var2921_iterator/-912451715 (cast-from-var3511-to-var2921 var3009!3))) ; Statement: $r28 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1918 Bool (Iterator_hasNext/-1669924200 var813)) ; Statement: $z1 = interfaceinvoke $r28.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return $r6 
(assert (= (ite var1918 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), charAt/698050440=([java.lang.String, int], char), var2112_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3511-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), <init>/1228603609=([java.util.ArrayList, int], void), var2921_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3511-to-var2921=([java.util.ArrayList], java.util.List), cast-from-String-to-var580=([java.lang.String], java.lang.Object), var2921_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var483=r19, var2697=r1, var3583=null_type, var1823=z0, var3017=$r0, var3404=$c0, var2112=java.lang.Character, var2015=$c1, var2103=$r3, var37=$r2, var1898=$r4, var643=r5, var3511=java.util.ArrayList, var800=$r6, var3009=$r7, var1705=2, var214=$r8, var1049=$r9, var3630=$r10, var605=$r11, var2921=java.util.List, var580=java.lang.Object, var763=$r12, var822=$r13, var3896=$r14, var2166=$r15, var813=$r28, var1918=$z1}
; {r19=var483, r1=var2697, null_type=var3583, z0=var1823, $r0=var3017, $c0=var3404, java.lang.Character=var2112, $c1=var2015, $r3=var2103, $r2=var37, $r4=var1898, r5=var643, java.util.ArrayList=var3511, $r6=var800, $r7=var3009, 2=var1705, $r8=var214, $r9=var1049, $r10=var3630, $r11=var605, java.util.List=var2921, java.lang.Object=var580, $r12=var763, $r13=var822, $r14=var3896, $r15=var2166, $r28=var813, $z1=var1918}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r19 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>(int)>(2);	if z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("is");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r15);	$r28 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r28.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return $r6;	return $r6
;block_num 5