(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3260 0)
(declare-sort var1321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1321_toString/1020258405 (String var3260 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3260 var3260)
(declare-const var3565 var3260) ; Statement: r1 := @parameter0: org.apache.lucene.util.Accountable 
(assert (not (= var3565 null-var3260)))
(define-const var1929 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
;(assert (var1321_toString/1020258405 var1929!1 var3565 0)) ; Statement: staticinvoke <org.apache.lucene.util.Accountables: java.lang.StringBuilder toString(java.lang.StringBuilder,org.apache.lucene.util.Accountable,int)>($r0, r1, 0) 

(declare-const var1929!2 String)
(declare-const var3565!1 var3260)
(declare-const var3500 Int)
(assert true)
(define-const var2789 String (toString/-2075883882 var1929!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1321_toString/1020258405=([java.lang.StringBuilder, org.apache.lucene.util.Accountable, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3260=org.apache.lucene.util.Accountable, var3565=r1, var1929=$r0, var1321=org.apache.lucene.util.Accountables, var3500=0, var2789=$r2}
; {org.apache.lucene.util.Accountable=var3260, r1=var3565, $r0=var1929, org.apache.lucene.util.Accountables=var1321, 0=var3500, $r2=var2789}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.lucene.util.Accountables: java.lang.StringBuilder toString(java.lang.StringBuilder,org.apache.lucene.util.Accountable,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.lucene.util.Accountable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.apache.lucene.util.Accountables: java.lang.StringBuilder toString(java.lang.StringBuilder,org.apache.lucene.util.Accountable,int)>($r0, r1, 0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1