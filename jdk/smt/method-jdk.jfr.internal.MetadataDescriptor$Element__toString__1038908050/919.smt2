(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var293 0)
(declare-sort var1159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var293 var293)
(declare-const null-var1159 var1159)
(declare-const var2381 var293) ; Statement: r1 := @this: jdk.jfr.internal.MetadataDescriptor$Element 
(assert (not (= var2381 null-var293)))
(define-const var2352 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2352)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2352!1 String)
(assert (= var2352!1 ""))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1798 var1159) ; Statement: $r3 := @caughtexception 
(assert (not (= var1798 null-var1159)))
(assert true) ; Non Conditional
(assert true)
(define-const var734 String (toString/-2075883882 var2352!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var293=jdk.jfr.internal.MetadataDescriptor$Element, var2381=r1, var2352=$r0, var1159=java.io.IOException, var1798=$r3, var734=$r2}
; {jdk.jfr.internal.MetadataDescriptor$Element=var293, r1=var2381, $r0=var2352, java.io.IOException=var1159, $r3=var1798, $r2=var734}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.MetadataDescriptor$Element;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 := @caughtexception;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3