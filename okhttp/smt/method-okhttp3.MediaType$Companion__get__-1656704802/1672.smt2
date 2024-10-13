(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var79 0)
(declare-sort var1662 0)
(declare-sort var2351 0)
(declare-sort var521 0)
(declare-sort var3966 0)
(declare-sort var2296 0)
(declare-sort var815 0)
(declare-sort var1689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2351_checkNotNullParameter/-2060636419 (var521 String) void)
(declare-fun cast-from-String-to-var521 (String) var521)
(declare-fun var2296_access$getTYPE_SUBTYPE$cp/-1297365673 () var3966)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matcher/468719934 (var3966 String) var815)
(declare-fun lookingAt/-1645860844 (var815) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1689-init () var1689)
(declare-fun toString/-522406933 (var521) String)
(declare-fun <init>/875830710 (var1689 String) void)
(declare-const null-var79 var79)
(declare-const null-String String)
(declare-const var1592 var79) ; Statement: r34 := @this: okhttp3.MediaType$Companion 
(assert (not (= var1592 null-var79)))
(declare-const var424 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var424 null-String)))
;(assert (var2351_checkNotNullParameter/-2060636419 (cast-from-String-to-var521 var424) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var424!1 String)
(declare-const var3662 String)
(define-const var954 var3966 var2296_access$getTYPE_SUBTYPE$cp/-1297365673) ; Statement: $r2 = staticinvoke <okhttp3.MediaType: java.util.regex.Pattern access$getTYPE_SUBTYPE$cp()>() 
(define-const var1427 String (cast-from-String-to-String var424!1)) ; Statement: $r1 = (java.lang.CharSequence) $r0 
(assert true)
(define-const var2880 var815 (matcher/468719934 var954 var1427)) ; Statement: r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r1) 
(assert true)
(define-const var312 Bool (lookingAt/-1645860844 var2880)) ; Statement: $z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean lookingAt()>() 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(assert (not (not (= (ite var312 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2841 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2841)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2841!1 String)
(assert (= var2841!1 ""))
(assert true)
(define-const var1431 String (append/672562846 var2841!1 "No subtype found for: \u0022")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No subtype found for: \"") 
(declare-const var2841!2 String)
(assert (= var2841!2 (str.++ var2841!1 "No subtype found for: \u0022")))
(assert true)
(define-const var3121 String (append/672562846 var1431 var424!1)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r0) 
(declare-const var1431!1 String)
(assert (= var1431!1 (str.++ var1431 var424!1)))
(assert true)
(define-const var154 String (append/-1166366385 var3121 34)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3121!1 String)
(assert (str.prefixof var3121 var3121!1))
(assert true)
(define-const var566 String (toString/-2075883882 var154)) ; Statement: $r35 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3161 var1689 var1689-init) ; Statement: $r32 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2558 String (toString/-522406933 (cast-from-String-to-var521 var566))) ; Statement: $r33 = virtualinvoke $r35.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3161 var2558)) ; Statement: specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r33) 

(declare-const var3161!1 var1689)
(declare-const var2558!1 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var2351_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var521=([java.lang.String], java.lang.Object), var2296_access$getTYPE_SUBTYPE$cp/-1297365673=([], java.util.regex.Pattern), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), lookingAt/-1645860844=([java.util.regex.Matcher], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1689-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var79=okhttp3.MediaType$Companion, var1592=r34, var424=$r0, var1662=null_type, var2351=kotlin.jvm.internal.Intrinsics, var521=java.lang.Object, var3662="<this>", var3966=java.util.regex.Pattern, var2296=okhttp3.MediaType, var954=$r2, var1427=$r1, var815=java.util.regex.Matcher, var2880=r3, var312=$z0, var2841=$r28, var1431=$r29, var3121=$r30, var154=$r31, var566=$r35, var1689=java.lang.IllegalArgumentException, var3161=$r32, var2558=$r33}
; {okhttp3.MediaType$Companion=var79, r34=var1592, $r0=var424, null_type=var1662, kotlin.jvm.internal.Intrinsics=var2351, java.lang.Object=var521, "<this>"=var3662, java.util.regex.Pattern=var3966, okhttp3.MediaType=var2296, $r2=var954, $r1=var1427, java.util.regex.Matcher=var815, r3=var2880, $z0=var312, $r28=var2841, $r29=var1431, $r30=var3121, $r31=var154, $r35=var566, java.lang.IllegalArgumentException=var1689, $r32=var3161, $r33=var2558}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: okhttp3.MediaType$Companion;	$r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$r2 = staticinvoke <okhttp3.MediaType: java.util.regex.Pattern access$getTYPE_SUBTYPE$cp()>();	$r1 = (java.lang.CharSequence) $r0;	r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r1);	$z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean lookingAt()>();	if $z0 != 0 goto $r4 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No subtype found for: \"");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r0);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	$r32 = new java.lang.IllegalArgumentException;	$r33 = virtualinvoke $r35.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r33);	throw $r32
;block_num 2