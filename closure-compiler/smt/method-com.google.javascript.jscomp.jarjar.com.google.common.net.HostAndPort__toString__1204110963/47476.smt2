(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun host/466947347 (var3475) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hasPort/-1732929353 (var3475) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3475 var3475)
(declare-const var1276 var3475) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort 
(assert (not (= var1276 null-var3475)))
(define-const var3131 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3419 String (host/466947347 var1276)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert true)
(define-const var2418 Int (length/-134980193 var3419)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var169 Int (+ var2418 8)) ; Statement: $i1 = $i0 + 8 
(assert true)
;(assert (<init>/543593434 var3131 var169)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3131!1 String)
(declare-const var169!1 Int)
(define-const var3849 String (host/466947347 var1276)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert true)
(define-const var3869 Int (indexOf/-1037706067 var3849 58)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>(58) 
 ; Statement: if $i2 < 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert (not (< var3869 0))) ; Negate: Cond: $i2 < 0  
(assert true)
(define-const var3554 String (append/-1166366385 var3131!1 91)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3131!2 String)
(assert (str.prefixof var3131!1 var3131!2))
(define-const var1619 String (host/466947347 var1276)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert true)
(define-const var2445 String (append/672562846 var3554 var1619)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3554!1 String)
(assert (= var3554!1 (str.++ var3554 var1619)))
(assert true)
;(assert (append/-1166366385 var2445 93)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2445!1 String)
(assert (str.prefixof var2445 var2445!1))
 ; Statement: goto [?= $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: boolean hasPort()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3473 Bool (hasPort/-1732929353 var1276)) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: boolean hasPort()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3473 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1716 String (toString/-2075883882 var3131!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), host/466947347=([com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort], java.lang.String), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), indexOf/-1037706067=([java.lang.String, int], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hasPort/-1732929353=([com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3475=com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort, var1276=r1, var3131=$r0, var3419=$r2, var2418=$i0, var169=$i1, var3849=$r3, var3869=$i2, var3554=$r8, var1619=$r7, var2445=$r9, var3473=$z0, var1716=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort=var3475, r1=var1276, $r0=var3131, $r2=var3419, $i0=var2418, $i1=var169, $r3=var3849, $i2=var3869, $r8=var3554, $r7=var1619, $r9=var2445, $z0=var3473, $r5=var1716}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i1 = $i0 + 8;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	$i2 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>(58);	if $i2 < 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r7 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	goto [?= $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: boolean hasPort()>()];	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: boolean hasPort()>();	if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4