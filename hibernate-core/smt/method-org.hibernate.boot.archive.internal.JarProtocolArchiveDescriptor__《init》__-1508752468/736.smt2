(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var614 0)
(declare-sort var91 0)
(declare-sort var3123 0)
(declare-sort var3196 0)
(declare-sort var3380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3196) void)
(declare-fun cast-from-var1707-to-var3196 (var1707) var3196)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3380-init () var3380)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3196) String)
(declare-fun cast-from-var91-to-var3196 (var91) var3196)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3380 String) void)
(declare-const null-var1707 var1707)
(declare-const null-var614 var614)
(declare-const null-var91 var91)
(declare-const null-String String)
(declare-const var1737 var1707) ; Statement: r0 := @this: org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor 
(assert (not (= var1737 null-var1707)))
(declare-const var3739 var614) ; Statement: r3 := @parameter0: org.hibernate.boot.archive.spi.ArchiveDescriptorFactory 
(assert (not (= var3739 null-var614)))
(declare-const var3627 var91) ; Statement: r2 := @parameter1: java.net.URL 
(assert (not (= var3627 null-var91)))
(declare-const var3602 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3602 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1707-to-var3196 var1737))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1737!1 var1707)
 ; Statement: if r1 == null goto $r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>() 
(assert (not (= var3602 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2874 Int (length/-134980193 var3602)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>() 
(assert (not (<= var2874 0))) ; Negate: Cond: $i3 <= 0  
(define-const var195 var3380 var3380-init) ; Statement: $r19 = new java.lang.IllegalArgumentException 
(define-const var3092 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3092)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3092!1 String)
(assert (= var3092!1 ""))
(assert true)
(define-const var1596 String (append/672562846 var3092!1 "jar:jar: not supported: ")) ; Statement: $r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jar:jar: not supported: ") 
(declare-const var3092!2 String)
(assert (= var3092!2 (str.++ var3092!1 "jar:jar: not supported: ")))
(assert true)
(define-const var453 String (append/-1031950772 var1596 (cast-from-var91-to-var3196 var3627))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1596!1 String)
(assert (str.prefixof var1596 var1596!1))
(assert true)
(define-const var2842 String (toString/-2075883882 var453)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var195 var2842)) ; Statement: specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var195!1 var3380)
(declare-const var2842!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1707-to-var3196=([org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor], java.lang.Object), length/-134980193=([java.lang.String], int), var3380-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var91-to-var3196=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1707=org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor, var1737=r0, var614=org.hibernate.boot.archive.spi.ArchiveDescriptorFactory, var3739=r3, var91=java.net.URL, var3627=r2, var3602=r1, var3123=null_type, var3196=java.lang.Object, var2874=$i3, var3380=java.lang.IllegalArgumentException, var195=$r19, var3092=$r18, var1596=$r14, var453=$r15, var2842=$r16}
; {org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor=var1707, r0=var1737, org.hibernate.boot.archive.spi.ArchiveDescriptorFactory=var614, r3=var3739, java.net.URL=var91, r2=var3627, r1=var3602, null_type=var3123, java.lang.Object=var3196, $i3=var2874, java.lang.IllegalArgumentException=var3380, $r19=var195, $r18=var3092, $r14=var1596, $r15=var453, $r16=var2842}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor;	r3 := @parameter0: org.hibernate.boot.archive.spi.ArchiveDescriptorFactory;	r2 := @parameter1: java.net.URL;	r1 := @parameter2: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r1 == null goto $r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>();	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	if $i3 <= 0 goto $r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>();	$r19 = new java.lang.IllegalArgumentException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jar:jar: not supported: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r19
;block_num 3