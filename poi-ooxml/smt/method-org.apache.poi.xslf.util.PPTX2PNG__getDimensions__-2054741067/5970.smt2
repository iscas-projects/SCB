(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var169 0)
(declare-sort var2866 0)
(declare-sort var2623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSize/1192064430 (var2866) var2623)
(declare-fun fixSide/-1346839480 (var169) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getWidth/-434025206 (var2623) Float64)
(declare-fun scale/-1346839480 (var169) Float32)
(declare-fun cast-from-Float32-to-Float64 (Float32) Float64)
(declare-fun getHeight/-2131505661 (var2623) Float64)
(declare-fun setSize/-1575258980 (var2623 Float64 Float64) void)
(declare-const null-var169 var169)
(declare-const null-var2866 var2866)
(declare-const null-var2623 var2623)
(declare-const var3363 var169) ; Statement: r2 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var3363 null-var169)))
(declare-const var442 var2866) ; Statement: r0 := @parameter0: org.apache.poi.xslf.util.MFProxy 
(assert (not (= var442 null-var2866)))
(declare-const var1768 var2623) ; Statement: r4 := @parameter1: java.awt.geom.Dimension2D 
(assert (not (= var1768 null-var2623)))
(assert true)
(define-const var2008 var2623 (getSize/1192064430 var442)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>() 
(define-const var862 String (fixSide/-1346839480 var3363)) ; Statement: r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide> 
(define-const var3355 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2867 Int (hashCode/-467973558 var862)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; } 
(assert (and (not (= var2867 113126854)) (and (not (= var2867 109413500)) (and (not (= var2867 109250890)) (and (not (= var2867 3327612)) (and (not (= var2867 (- 1221029593))) true)))))) ; Intersect: Negate: Cond: $i0 == 113126854   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 109250890   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == -1221029593   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; } 
(assert true) ; Non Conditional
(define-const var3438 Float64 ((_ to_fp 11 53) #x3ff0000000000000)) ; Statement: d4 = 1.0 
 ; Statement: goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3518 Float64 (getWidth/-434025206 var2008)) ; Statement: $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
(define-const var214 Float32 (scale/-1346839480 var3363)) ; Statement: $f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var3388 Float64 (cast-from-Float32-to-Float64 var214)) ; Statement: $d6 = (double) $f0 
(define-const var3638 Float64 (fp.mul roundNearestTiesToEven var3518 var3388)) ; Statement: $d7 = $d5 * $d6 
(define-const var693 Float64 (fp.div roundNearestTiesToEven var3638 var3438)) ; Statement: $d8 = $d7 / d4 
(assert true)
(define-const var3143 Float64 (getHeight/-2131505661 var2008)) ; Statement: $d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var3910 Float32 (scale/-1346839480 var3363)) ; Statement: $f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var703 Float64 (cast-from-Float32-to-Float64 var3910)) ; Statement: $d10 = (double) $f1 
(define-const var1390 Float64 (fp.mul roundNearestTiesToEven var3143 var703)) ; Statement: $d11 = $d9 * $d10 
(define-const var2983 Float64 (fp.div roundNearestTiesToEven var1390 var3438)) ; Statement: $d12 = $d11 / d4 
(assert true)
;(assert (setSize/-1575258980 var1768 var693 var2983)) ; Statement: virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12) 

(declare-const var1768!1 var2623)
(declare-const var693!1 Float64)
(declare-const var2983!1 Float64)
 ; Statement: return d4 
(check-sat)
(get-model)
(get-unsat-core)
; {getSize/1192064430=([org.apache.poi.xslf.util.MFProxy], java.awt.geom.Dimension2D), fixSide/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), getWidth/-434025206=([java.awt.geom.Dimension2D], double), scale/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], float), cast-from-Float32-to-Float64=([float], double), getHeight/-2131505661=([java.awt.geom.Dimension2D], double), setSize/-1575258980=([java.awt.geom.Dimension2D, double, double], void)}
; {var169=org.apache.poi.xslf.util.PPTX2PNG, var3363=r2, var2866=org.apache.poi.xslf.util.MFProxy, var442=r0, var2623=java.awt.geom.Dimension2D, var1768=r4, var2008=r1, var862=r3, var3355=b1, var2867=$i0, var3438=d4, var3518=$d5, var214=$f0, var3388=$d6, var3638=$d7, var693=$d8, var3143=$d9, var3910=$f1, var703=$d10, var1390=$d11, var2983=$d12}
; {org.apache.poi.xslf.util.PPTX2PNG=var169, r2=var3363, org.apache.poi.xslf.util.MFProxy=var2866, r0=var442, java.awt.geom.Dimension2D=var2623, r4=var1768, r1=var2008, r3=var862, b1=var3355, $i0=var2867, d4=var3438, $d5=var3518, $f0=var214, $d6=var3388, $d7=var3638, $d8=var693, $d9=var3143, $f1=var3910, $d10=var703, $d11=var1390, $d12=var2983}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: org.apache.poi.xslf.util.MFProxy;	r4 := @parameter1: java.awt.geom.Dimension2D;	r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>();	r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide>;	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; };	tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; };	d4 = 1.0;	goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()];	$d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	$f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d6 = (double) $f0;	$d7 = $d5 * $d6;	$d8 = $d7 / d4;	$d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	$f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d10 = (double) $f1;	$d11 = $d9 * $d10;	$d12 = $d11 / d4;	virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12);	return d4
;block_num 4