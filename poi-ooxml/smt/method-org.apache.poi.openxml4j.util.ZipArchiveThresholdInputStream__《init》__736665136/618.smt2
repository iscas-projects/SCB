(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3502 0)
(declare-sort var1324 0)
(declare-sort var2884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/105507897 (var2884 var1324) void)
(declare-fun cast-from-var3502-to-var2884 (var3502) var2884)
(declare-fun guardState/629566759 (var3502) Bool)
(declare-const null-var3502 var3502)
(declare-const null-var1324 var1324)
(declare-const var3832 var3502) ; Statement: r0 := @this: org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream 
(assert (not (= var3832 null-var3502)))
(declare-const var3666 var1324) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3666 null-var1324)))
(assert true)
;(assert (<init>/105507897 (cast-from-var3502-to-var2884 var3832) var3666)) ; Statement: specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>(r1) 

(declare-const var3832!1 var3502)
(declare-const var3666!1 var1324)
(declare-const var3832!2 var3502)
(assert (not (= var3832!2 null-var3502)))
(assert (= (guardState/629566759 var3832!2) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream: boolean guardState> = 1 
(define-const var537 Bool true) ; Statement: $z0 = r1 instanceof org.apache.commons.compress.utils.InputStreamStatistics 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var537 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/105507897=([java.io.FilterInputStream, java.io.InputStream], void), cast-from-var3502-to-var2884=([org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream], java.io.FilterInputStream), guardState/629566759=([org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream], boolean)}
; {var3502=org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream, var3832=r0, var1324=java.io.InputStream, var3666=r1, var2884=java.io.FilterInputStream, var537=$z0}
; {org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream=var3502, r0=var3832, java.io.InputStream=var1324, r1=var3666, java.io.FilterInputStream=var2884, $z0=var537}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream;	r1 := @parameter0: java.io.InputStream;	specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>(r1);	r0.<org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream: boolean guardState> = 1;	$z0 = r1 instanceof org.apache.commons.compress.utils.InputStreamStatistics;	if $z0 != 0 goto return;	return
;block_num 2