(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3878 0)
(declare-sort var3705 0)
(declare-sort var1506 0)
(declare-sort var3101 0)
(declare-sort var154 0)
(declare-sort var789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getWindingRule/998529117 (var3705) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun arr-Float64-init () (Array Int Float64))
(declare-fun getPathIterator/-682339779 (var3101 var154) var1506)
(declare-fun cast-from-var3705-to-var3101 (var3705) var3101)
(declare-fun var1506_isDone/-1832213810 (var1506) Bool)
(declare-const null-var3878 var3878)
(declare-const null-String String)
(declare-const null-var3705 var3705)
(declare-const null-NullType var789)
(declare-const null-var154 var154)
(declare-const var2647 var3878) ; Statement: r34 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2647 null-var3878)))
(declare-const var1156 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1156 null-String)))
(declare-const var922 var3705) ; Statement: r1 := @parameter1: java.awt.geom.Path2D 
(assert (not (= var922 null-var3705)))
(assert true)
(define-const var1033 String (append/672562846 var1156 "Path2D p = new Path2D.Double(")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Path2D p = new Path2D.Double(") 
(declare-const var1156!1 String)
(assert (= var1156!1 (str.++ var1156 "Path2D p = new Path2D.Double(")))
(assert true)
(define-const var917 Int (getWindingRule/998529117 var922)) ; Statement: $i0 = virtualinvoke r1.<java.awt.geom.Path2D: int getWindingRule()>() 
(assert true)
(define-const var263 String (append/-1001720160 var1033 var917)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1033!1 String)
(assert (str.prefixof var1033 var1033!1))
(assert true)
;(assert (append/672562846 var263 ");\n")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");\n") 
(declare-const var263!1 String)
(assert (= var263!1 (str.++ var263 ");\n")))
(define-const var3116 (Array Int Float64) arr-Float64-init) ; Statement: r4 = newarray (double)[6] 
(assert true)
(define-const var1167 var1506 (getPathIterator/-682339779 (cast-from-var3705-to-var3101 var922) null-var154)) ; Statement: r5 = virtualinvoke r1.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>(null) 
(assert true) ; Non Conditional
(define-const var2854 Bool (var1506_isDone/-1832213810 var1167)) ; Statement: $z0 = interfaceinvoke r5.<java.awt.geom.PathIterator: boolean isDone()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2854 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getWindingRule/998529117=([java.awt.geom.Path2D], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), arr-Float64-init=([], double[]), getPathIterator/-682339779=([java.awt.Shape, java.awt.geom.AffineTransform], java.awt.geom.PathIterator), cast-from-var3705-to-var3101=([java.awt.geom.Path2D], java.awt.Shape), var1506_isDone/-1832213810=([java.awt.geom.PathIterator], boolean)}
; {var3878=org.apache.poi.xslf.util.DummyGraphics2d, var2647=r34, var1156=r0, var3705=java.awt.geom.Path2D, var922=r1, var1033=$r2, var917=$i0, var263=$r3, var3116=r4, var1506=java.awt.geom.PathIterator, var3101=java.awt.Shape, var154=java.awt.geom.AffineTransform, var1167=r5, var2854=$z0, var789=null_type}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3878, r34=var2647, r0=var1156, java.awt.geom.Path2D=var3705, r1=var922, $r2=var1033, $i0=var917, $r3=var263, r4=var3116, java.awt.geom.PathIterator=var1506, java.awt.Shape=var3101, java.awt.geom.AffineTransform=var154, r5=var1167, $z0=var2854, null_type=var789}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r34 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.awt.geom.Path2D;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Path2D p = new Path2D.Double(");	$i0 = virtualinvoke r1.<java.awt.geom.Path2D: int getWindingRule()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");\n");	r4 = newarray (double)[6];	r5 = virtualinvoke r1.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>(null);	$z0 = interfaceinvoke r5.<java.awt.geom.PathIterator: boolean isDone()>();	if $z0 != 0 goto return;	return
;block_num 3