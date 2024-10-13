(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var302 0)
(declare-sort var2880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun term/800924120 (var302) var2880)
(declare-fun utf8ToString/691883885 (var2880) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun vector/800924120 (var302) (Array Int Float32))
(declare-fun getLength-Arr-Float32-1 ((Array Int Float32)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var302 var302)
(declare-const var53 var302) ; Statement: r1 := @this: org.apache.lucene.util.TermAndVector 
(assert (not (= var53 null-var302)))
(define-const var821 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3022 var2880 (term/800924120 var53)) ; Statement: $r2 = r1.<org.apache.lucene.util.TermAndVector: org.apache.lucene.util.BytesRef term> 
(assert true)
(define-const var3232 String (utf8ToString/691883885 var3022)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.lucene.util.BytesRef: java.lang.String utf8ToString()>() 
(assert true)
;(assert (<init>/-1061048412 var821 var3232)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var821!1 String)
(assert (= var821!1 var3232))
(assert true)
;(assert (append/672562846 var821!1 " [")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var821!2 String)
(assert (= var821!2 (str.++ var821!1 " [")))
(define-const var3068 (Array Int Float32) (vector/800924120 var53)) ; Statement: $r4 = r1.<org.apache.lucene.util.TermAndVector: float[] vector> 
(define-const var276 Int (getLength-Arr-Float32-1 var3068)) ; Statement: $i0 = lengthof $r4 
 ; Statement: if $i0 <= 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var276 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var3950 String (toString/-2075883882 var821!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), term/800924120=([org.apache.lucene.util.TermAndVector], org.apache.lucene.util.BytesRef), utf8ToString/691883885=([org.apache.lucene.util.BytesRef], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), vector/800924120=([org.apache.lucene.util.TermAndVector], float[]), getLength-Arr-Float32-1=([float[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var302=org.apache.lucene.util.TermAndVector, var53=r1, var821=$r0, var2880=org.apache.lucene.util.BytesRef, var3022=$r2, var3232=$r3, var3068=$r4, var276=$i0, var3950=$r5}
; {org.apache.lucene.util.TermAndVector=var302, r1=var53, $r0=var821, org.apache.lucene.util.BytesRef=var2880, $r2=var3022, $r3=var3232, $r4=var3068, $i0=var276, $r5=var3950}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.TermAndVector;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.lucene.util.TermAndVector: org.apache.lucene.util.BytesRef term>;	$r3 = virtualinvoke $r2.<org.apache.lucene.util.BytesRef: java.lang.String utf8ToString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = r1.<org.apache.lucene.util.TermAndVector: float[] vector>;	$i0 = lengthof $r4;	if $i0 <= 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2