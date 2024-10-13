(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var688 0)
(declare-sort var2760 0)
(declare-sort var2852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReference/-1089173962 (var2760) Bool)
(declare-fun cast-from-var688-to-var2760 (var688) var2760)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getArchive/1410818878 (var688) var2852)
(declare-fun toString/1668676610 (var2852) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1314741259 (var2852) String)
(declare-fun cast-from-var688-to-var2852 (var688) var2852)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var688 var688)
(declare-const var3110 var688) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource 
(assert (not (= var3110 null-var688)))
(assert true)
(define-const var1561 Bool (isReference/-1089173962 (cast-from-var688-to-var2760 var3110))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: boolean isReference()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var1561 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2062 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2062)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2062!1 String)
(assert (= var2062!1 ""))
(assert true)
(define-const var3095 var2852 (getArchive/1410818878 var3110)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource getArchive()>() 
(assert true)
(define-const var197 String (toString/1668676610 var3095)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>() 
(assert true)
(define-const var1479 String (append/672562846 var2062!1 var197)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2062!2 String)
(assert (= var2062!2 (str.++ var2062!1 var197)))
(assert true)
(define-const var2715 String (append/-1166366385 var1479 58)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1479!1 String)
(assert (str.prefixof var1479 var1479!1))
(assert true)
(define-const var1391 String (getName/1314741259 (cast-from-var688-to-var2852 var3110))) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: java.lang.String getName()>() 
(assert true)
(define-const var1527 String (append/672562846 var2715 var1391)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2715!1 String)
(assert (= var2715!1 (str.++ var2715 var1391)))
(assert true)
(define-const var933 String (toString/-2075883882 var1527)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {isReference/-1089173962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], boolean), cast-from-var688-to-var2760=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getArchive/1410818878=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), toString/1668676610=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), cast-from-var688-to-var2852=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var688=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource, var3110=r0, var2760=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var1561=$z0, var2062=$r1, var2852=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3095=$r2, var197=$r3, var1479=$r4, var2715=$r6, var1391=$r5, var1527=$r7, var933=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource=var688, r0=var3110, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var2760, $z0=var1561, $r1=var2062, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2852, $r2=var3095, $r3=var197, $r4=var1479, $r6=var2715, $r5=var1391, $r7=var1527, $r9=var933}
;seq <java.lang.StringBuilder: void <init>()>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: boolean isReference()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource getArchive()>();	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3