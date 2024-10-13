(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3546 0)
(declare-sort var1971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1971-init () var1971)
(declare-fun getLinkedFile/-758387313 (var3546) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/466700016 (var1971 Int) void)
(declare-const null-var3546 var3546)
(declare-const var188 var3546) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField 
(assert (not (= var188 null-var3546)))
(define-const var3274 var1971 var1971-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort 
(assert true)
(define-const var281 String (getLinkedFile/-758387313 var188)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>() 
(assert true)
(define-const var288 (Array Int Int) (getBytes/1068683673 var281)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(define-const var1985 Int (getLength-Arr-Int-1 var288)) ; Statement: $i0 = lengthof $r3 
(define-const var836 Int (+ 14 var1985)) ; Statement: $i1 = 14 + $i0 
(assert true)
;(assert (<init>/466700016 var3274 var836)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: void <init>(int)>($i1) 

(declare-const var3274!1 var1971)
(declare-const var836!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1971-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort), getLinkedFile/-758387313=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getLength-Arr-Int-1=([byte[]], int), <init>/466700016=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort, int], void)}
; {var3546=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField, var188=r1, var1971=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort, var3274=$r0, var281=$r2, var288=$r3, var1985=$i0, var836=$i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField=var3546, r1=var188, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort=var1971, $r0=var3274, $r2=var281, $r3=var288, $i0=var1985, $i1=var836}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>();	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	$i0 = lengthof $r3;	$i1 = 14 + $i0;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: void <init>(int)>($i1);	return $r0
;block_num 1