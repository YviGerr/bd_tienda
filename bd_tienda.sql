--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-18 22:58:58

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4906 (class 0 OID 16404)
-- Dependencies: 216
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categorias (id_categoria, nombre_categoria, descripcion) FROM stdin;
1	Enlatados	Productos preservados en lata
2	Panadería	Productos de pan y pastelería
3	Bebidas	Refrescos y jugos embotellados
4	Lácteos	Leche y derivados de leche
5	Snacks	Botanas y antojitos
6	Galletas	Galletas dulces y saladas
7	Untables	Cremas y mermeladas para untar
8	Harinas	Harinas de maíz y trigo
9	Conservas	Frutas y verduras conservadas
10	Carnes Frías	Embutidos y carnes frías diversas
\.


--
-- TOC entry 4910 (class 0 OID 16439)
-- Dependencies: 220
-- Data for Name: cliente_direcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente_direcs (id_cliente, id_direccion, calle, numero, colonia, ciudad, codigo_postal) FROM stdin;
1	1	Calle Sol	123	Centro	Ciudad Sol	70000
2	2	Calle Luna	234	Lunar	Ciudad Luna	70001
3	3	Calle Estrella	345	Estelar	Ciudad Estrella	70002
4	4	Calle Cometa	456	Cometa	Ciudad Cometa	70003
5	5	Calle Planeta	567	Planetario	Ciudad Planeta	70004
6	6	Calle Galaxia	678	Galáctico	Ciudad Galaxia	70005
7	7	Calle Universo	789	Universal	Ciudad Universo	70006
8	8	Calle Meteorito	890	Meteor	Ciudad Meteorito	70007
9	9	Calle Vía Láctea	901	Láctea	Ciudad Vía Láctea	70008
10	10	Calle Nebulosa	12	Nebular	Ciudad Nebulosa	70009
\.


--
-- TOC entry 4911 (class 0 OID 16449)
-- Dependencies: 221
-- Data for Name: cliente_tels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente_tels (id_cliente, telefono) FROM stdin;
1	555-0101  
2	555-0202  
3	555-0303  
4	555-0404  
5	555-0505  
6	555-0606  
7	555-0707  
8	555-0808  
9	555-0909  
10	555-1010  
\.


--
-- TOC entry 4905 (class 0 OID 16399)
-- Dependencies: 215
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, nombre, apaterno, amaterno, preferencias) FROM stdin;
1	Juan	Pérez	Gómez	\N
2	María	Rodríguez	Fernández	\N
3	Carlos	Sánchez	Morales	\N
4	Ana	Martínez	Ruiz	\N
5	Luis	López	Jiménez	\N
6	Carmen	García	Alonso	\N
7	Fernando	Gómez	Guerrero	\N
8	Teresa	Moreno	Ortega	\N
9	Javier	Díaz	Cano	\N
10	Patricia	Hernández	Prieto	\N
\.


--
-- TOC entry 4917 (class 0 OID 16519)
-- Dependencies: 227
-- Data for Name: entradas_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entradas_producto (id_proveedor, id_producto, fecha_entrega, producto_malogrado) FROM stdin;
1	1	2024-03-15 00:00:00	f
2	2	2024-03-16 00:00:00	t
3	3	2024-03-17 00:00:00	f
4	4	2024-03-18 00:00:00	f
5	5	2024-03-19 00:00:00	t
6	6	2024-03-20 00:00:00	f
7	7	2024-03-21 00:00:00	f
8	8	2024-03-22 00:00:00	f
9	9	2024-03-23 00:00:00	t
10	10	2024-03-24 00:00:00	f
\.


--
-- TOC entry 4907 (class 0 OID 16409)
-- Dependencies: 217
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcas (id_marca, nombre_marca) FROM stdin;
1	La Costeña
2	Bimbo
3	Coca-Cola
4	Alpura
5	Lala
6	Sabritas
7	Gamesa
8	Nutella
9	Maseca
10	Del Monte
\.


--
-- TOC entry 4914 (class 0 OID 16479)
-- Dependencies: 224
-- Data for Name: pagos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagos (id_pago, id_cliente, tipo_pago, banco, numero_tarjeta) FROM stdin;
1	1	Tarjeta de Crédito	BBVA	1234 5678 9101 1121
2	2	Efectivo	No Aplica	\N
3	3	Tarjeta de Débito	Banamex	2345 6789 1011 1213
4	4	Transferencia	Santander	\N
5	5	Tarjeta de Crédito	HSBC	3456 7891 0111 1314
6	6	Efectivo	No Aplica	\N
7	7	Tarjeta de Débito	Scotiabank	4567 8910 1112 1415
8	8	Transferencia	Banorte	\N
9	9	Tarjeta de Crédito	BBVA	5678 9101 1112 1516
10	10	Efectivo	No Aplica	\N
\.


--
-- TOC entry 4909 (class 0 OID 16419)
-- Dependencies: 219
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, id_marca, id_proveedor, id_categoria, nombre_producto, impuesto, stock, descripcion) FROM stdin;
1	1	1	1	Frijoles Negros	0.16	100	Frijoles negros en lata de 500g
2	2	2	2	Pan de Caja	0.16	50	Pan blanco Bimbo de 640g
3	3	3	3	Coca Cola	0.16	150	Refresco Coca-Cola de 600ml
4	4	4	4	Leche Entera	0.16	30	Leche Alpura entera 1L
5	5	5	4	Yogurt Natural	0.16	40	Yogurt Lala natural 1L
6	6	6	5	Papas Adobadas	0.16	80	Papas Sabritas sabor adobado 170g
7	7	7	6	Galletas Marías	0.16	70	Galletas Marías Gamesa 170g
8	8	8	7	Crema de Avellanas	0.16	60	Nutella crema de avellanas 350g
9	9	9	8	Harina de Maíz	0.16	90	Harina Maseca para tortillas 1kg
10	10	10	9	Duraznos en Almíbar	0.16	55	Duraznos en almíbar Del Monte 820g
\.


--
-- TOC entry 4912 (class 0 OID 16459)
-- Dependencies: 222
-- Data for Name: proveedor_direcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor_direcs (id_direccion, id_proveedor, calle, numero, colonia, ciudad, codigo_postal) FROM stdin;
1	1	Av. Industria	100	Industrial	Ciudad Granos	75000
2	2	Calle Huerta	200	Agropecuario	Ciudad Verduras	75001
3	3	Blvd. San Juan	300	Ganadero	Ciudad Carnes	75002
4	4	Calle Nutrición	400	Saludable	Ciudad Alimentos	75003
5	5	Av. Lácteos	500	Lechero	Ciudad Láctea	75004
6	6	Calle Frescura	600	Refrescante	Ciudad Bebidas	75005
7	7	Calle Conserva	700	Campesino	Ciudad Campo	75006
8	8	Av. Panadero	800	Harinero	Ciudad Trigo	75007
9	9	Calle Dulzura	900	Dulce	Ciudad Delice	75008
10	10	Calle Verde	101	Verdura	Ciudad Fruver	75009
\.


--
-- TOC entry 4913 (class 0 OID 16469)
-- Dependencies: 223
-- Data for Name: proveedor_tels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor_tels (id_proveedor, telefono) FROM stdin;
1	555-1000  
2	555-2000  
3	555-3000  
4	555-4000  
5	555-5000  
6	555-6000  
7	555-7000  
8	555-8000  
9	555-9000  
10	555-1010  
\.


--
-- TOC entry 4908 (class 0 OID 16414)
-- Dependencies: 218
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedores (id_proveedor, nombre_proveedor, sitio_web) FROM stdin;
1	Distribuidora de Granos SA	www.granosdistribuidora.com
2	Productos La Huerta	www.productoslahuerta.mx
3	Carnes Finas San Juan	www.carnes-sanjuan.com
4	Alimentos Nutritivos SA	www.alimentosnutritivos.com
5	Lácteos y Derivados	www.lacteosyderivados.mx
6	Bebidas y Refrescos SA	www.bebidasrefrescos.com
7	Conservas del Campo	www.conservascampo.mx
8	Panadería El Trigal	www.eltrigalpanaderia.com
9	Dulces y Chocolates Delice	www.dulcesdelice.com
10	Frutas y Verduras Frescas	www.fruverfrescas.com.mx
\.


--
-- TOC entry 4915 (class 0 OID 16489)
-- Dependencies: 225
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id_venta, id_cliente, id_pago, fecha, descuento, total_impuesto, monto_final) FROM stdin;
1	1	1	2024-03-18 00:00:00	0.00	9.60	60.00
2	2	2	2024-03-19 00:00:00	5.00	8.64	54.00
3	3	3	2024-03-20 00:00:00	0.00	4.80	30.00
4	4	4	2024-03-21 00:00:00	2.00	12.96	81.00
5	5	5	2024-03-22 00:00:00	0.00	19.20	120.00
6	6	6	2024-03-23 00:00:00	3.00	10.56	66.00
7	7	7	2024-03-24 00:00:00	0.00	15.36	96.00
8	8	8	2024-03-25 00:00:00	0.00	6.72	42.00
9	9	9	2024-03-26 00:00:00	0.00	14.40	90.00
10	10	10	2024-03-27 00:00:00	0.00	12.00	75.00
\.


--
-- TOC entry 4916 (class 0 OID 16504)
-- Dependencies: 226
-- Data for Name: ventas_detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas_detalle (id_venta, id_producto, cantidad, precio, parcial) FROM stdin;
1	1	2	25.00	50.00
2	2	1	30.00	30.00
3	3	3	10.00	30.00
4	4	1	50.00	50.00
5	5	2	60.00	120.00
6	6	2	30.00	60.00
7	7	4	20.00	80.00
8	8	1	35.00	35.00
9	9	3	20.00	60.00
10	10	5	15.00	75.00
\.


-- Completed on 2024-03-18 22:58:58

--
-- PostgreSQL database dump complete
--

