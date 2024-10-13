(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1093 0)
(declare-sort var1309 0)
(declare-sort var2562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-2092162108 (var1093) var1309)
(declare-fun toString/-522406933 (var2562) String)
(declare-fun cast-from-var1093-to-var2562 (var1093) var2562)
(declare-const null-var1093 var1093)
(declare-const var3680 var1093) ; Statement: r0 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8 
(assert (not (= var3680 null-var1093)))
(define-const var2020 var1309 (out/-2092162108 var3680)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.io.OutputStream out> 
(define-const var1312 Bool false) ; Statement: $z0 = $r1 instanceof java.io.ByteArrayOutputStream 
 ; Statement: if $z0 == 0 goto $r2 = specialinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var1312 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3265 String (toString/-522406933 (cast-from-var1093-to-var2562 var3680))) ; Statement: $r2 = specialinvoke r0.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-2092162108=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8], java.io.OutputStream), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1093-to-var2562=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8], java.lang.Object)}
; {var1093=com.alibaba.fastjson2.support.csv.CSVWriterUTF8, var3680=r0, var1309=java.io.OutputStream, var2020=$r1, var1312=$z0, var2562=java.lang.Object, var3265=$r2}
; {com.alibaba.fastjson2.support.csv.CSVWriterUTF8=var1093, r0=var3680, java.io.OutputStream=var1309, $r1=var2020, $z0=var1312, java.lang.Object=var2562, $r2=var3265}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8;	$r1 = r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.io.OutputStream out>;	$z0 = $r1 instanceof java.io.ByteArrayOutputStream;	if $z0 == 0 goto $r2 = specialinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = specialinvoke r0.<java.lang.Object: java.lang.String toString()>();	return $r2
;block_num 2