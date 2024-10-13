(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2577 0)
(declare-sort var2854 0)
(declare-sort var2267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1213682957 (var2577) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getId/1256750700 (var2577) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun getState/1636970491 (var2577) var2854)
(declare-fun append/-1031950772 (String var2267) String)
(declare-fun cast-from-var2854-to-var2267 (var2854) var2267)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2577 var2577)
(declare-const var1411 var2577) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1411 null-var2577)))
(define-const var3875 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3875)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3875!1 String)
(assert (= var3875!1 ""))
(assert true)
(define-const var28 String (getName/-1213682957 var1411)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var3982 String (append/672562846 var3875!1 var28)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3875!2 String)
(assert (= var3875!2 (str.++ var3875!1 var28)))
(assert true)
(define-const var1852 String (append/672562846 var3982 " (id=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (id=") 
(declare-const var3982!1 String)
(assert (= var3982!1 (str.++ var3982 " (id=")))
(assert true)
(define-const var384 Int (getId/1256750700 var1411)) ; Statement: $l0 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var789 String (append/-901862667 var1852 var384)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1852!1 String)
(assert (str.prefixof var1852 var1852!1))
(assert true)
(define-const var3814 String (append/672562846 var789 ") ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var789!1 String)
(assert (= var789!1 (str.++ var789 ") ")))
(assert true)
(define-const var2393 var2854 (getState/1636970491 var1411)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState getState()>() 
(assert true)
(define-const var3366 String (append/-1031950772 var3814 (cast-from-var2854-to-var2267 var2393))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3814!1 String)
(assert (str.prefixof var3814 var3814!1))
(assert true)
(define-const var570 String (toString/-2075883882 var3366)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), getState/1636970491=([jdk.jfr.internal.PlatformRecording], jdk.jfr.RecordingState), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2854-to-var2267=([jdk.jfr.RecordingState], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2577=jdk.jfr.internal.PlatformRecording, var1411=r1, var3875=$r0, var28=$r2, var3982=$r3, var1852=$r4, var384=$l0, var789=$r5, var3814=$r7, var2854=jdk.jfr.RecordingState, var2393=$r6, var2267=java.lang.Object, var3366=$r8, var570=$r9}
; {jdk.jfr.internal.PlatformRecording=var2577, r1=var1411, $r0=var3875, $r2=var28, $r3=var3982, $r4=var1852, $l0=var384, $r5=var789, $r7=var3814, jdk.jfr.RecordingState=var2854, $r6=var2393, java.lang.Object=var2267, $r8=var3366, $r9=var570}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (id=");	$l0 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState getState()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1