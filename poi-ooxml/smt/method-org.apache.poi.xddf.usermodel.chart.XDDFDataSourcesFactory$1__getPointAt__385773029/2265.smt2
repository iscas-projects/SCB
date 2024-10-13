(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2693 0)
(declare-sort var3574 0)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun category/1069855069 (var2693) var3574)
(declare-fun var3574_sizeOfPtArray/10542862 (var3574) Int)
(declare-fun var3574_getPtArray/-1664641464 (var3574 Int) var33)
(declare-fun var33_getV/-1070044036 (var33) String)
(declare-const null-var2693 var2693)
(declare-const null-Int Int)
(declare-const var1932 var2693) ; Statement: r0 := @this: org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1 
(assert (not (= var1932 null-var2693)))
(declare-const var2415 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2415 null-Int)))
(define-const var1085 var3574 (category/1069855069 var1932)) ; Statement: $r1 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category> 
(define-const var1616 Int (var3574_sizeOfPtArray/10542862 var1085)) ; Statement: $i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: int sizeOfPtArray()>() 
 ; Statement: if $i1 > i0 goto $r2 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category> 
(assert (> var1616 var2415)) ; Cond: $i1 > i0 
(define-const var972 var3574 (category/1069855069 var1932)) ; Statement: $r2 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category> 
(define-const var3596 var33 (var3574_getPtArray/-1664641464 var972 var2415)) ; Statement: $r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal getPtArray(int)>(i0) 
(define-const var2217 String (var33_getV/-1070044036 var3596)) ; Statement: $r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal: java.lang.String getV()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {category/1069855069=([org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1], org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData), var3574_sizeOfPtArray/10542862=([org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData], int), var3574_getPtArray/-1664641464=([org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData, int], org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal), var33_getV/-1070044036=([org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal], java.lang.String)}
; {var2693=org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1, var1932=r0, var2415=i0, var3574=org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData, var1085=$r1, var1616=$i1, var972=$r2, var33=org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal, var3596=$r3, var2217=$r4}
; {org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1=var2693, r0=var1932, i0=var2415, org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData=var3574, $r1=var1085, $i1=var1616, $r2=var972, org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal=var33, $r3=var3596, $r4=var2217}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category>;	$i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: int sizeOfPtArray()>();	if $i1 > i0 goto $r2 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category>;	$r2 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category>;	$r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal getPtArray(int)>(i0);	$r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal: java.lang.String getV()>();	return $r4
;block_num 2