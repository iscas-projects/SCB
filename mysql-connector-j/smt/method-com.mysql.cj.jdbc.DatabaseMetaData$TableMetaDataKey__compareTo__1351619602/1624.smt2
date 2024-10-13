(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tableType/-236895273 (var1173) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1173 var1173)
(declare-const var3448 var1173) ; Statement: r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey 
(assert (not (= var3448 null-var1173)))
(declare-const var3501 var1173) ; Statement: r1 := @parameter0: com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey 
(assert (not (= var3501 null-var1173)))
(define-const var735 String (tableType/-236895273 var3448)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey: java.lang.String tableType> 
(define-const var2068 String (tableType/-236895273 var3501)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey: java.lang.String tableType> 
(assert true)
(define-const var771 Int (compareTo/1411385946 var735 var2068)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var735 var2068)) (this<=other (str.<= var735 var2068)) (compareRes (compareTo/1411385946 var735 var2068))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
(define-const var2719 Int var771) ; Statement: i4 = $i0 
 ; Statement: if $i0 != 0 goto return i4 
(assert (not (= var771 0))) ; Cond: $i0 != 0 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {tableType/-236895273=([com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1173=com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey, var3448=r0, var3501=r1, var735=$r3, var2068=$r2, var771=$i0, var2719=i4}
; {com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey=var1173, r0=var3448, r1=var3501, $r3=var735, $r2=var2068, $i0=var771, i4=var2719}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey;	r1 := @parameter0: com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey;	$r3 = r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey: java.lang.String tableType>;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData$TableMetaDataKey: java.lang.String tableType>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	i4 = $i0;	if $i0 != 0 goto return i4;	return i4
;block_num 2