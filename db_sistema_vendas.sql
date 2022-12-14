PGDMP                          {            db_sistema_vendas    12.10    12.10 7    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    16453    db_sistema_vendas    DATABASE     ?   CREATE DATABASE db_sistema_vendas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE db_sistema_vendas;
                postgres    false            ?            1259    16456    tbl_categoria    TABLE     }   CREATE TABLE public.tbl_categoria (
    id_categoria integer NOT NULL,
    nome_categoria character varying(100) NOT NULL
);
 !   DROP TABLE public.tbl_categoria;
       public         heap    postgres    false            ?            1259    16454    tbl_categoria_id_categoria_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_categoria_id_categoria_seq;
       public          postgres    false    203            P           0    0    tbl_categoria_id_categoria_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_categoria_id_categoria_seq OWNED BY public.tbl_categoria.id_categoria;
          public          postgres    false    202            ?            1259    49257    tbl_cliente    TABLE     ?  CREATE TABLE public.tbl_cliente (
    id_cliente integer NOT NULL,
    nome_cliente character varying(100) NOT NULL,
    email_cliente character varying(100) NOT NULL,
    telefone_cliente character(20) NOT NULL,
    cep_cliente character varying(10) NOT NULL,
    logradouro character varying(100),
    numero character varying(100),
    complemento character varying(100),
    bairro character varying(100),
    cidade character varying(100),
    estado character varying(2)
);
    DROP TABLE public.tbl_cliente;
       public         heap    postgres    false            ?            1259    49255    tbl_cliente_id_cliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_cliente_id_cliente_seq;
       public          postgres    false    209            Q           0    0    tbl_cliente_id_cliente_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_cliente_id_cliente_seq OWNED BY public.tbl_cliente.id_cliente;
          public          postgres    false    208            ?            1259    49282    tbl_item_pedido    TABLE     ?   CREATE TABLE public.tbl_item_pedido (
    id_num_pedido integer NOT NULL,
    qtd_item integer,
    preco_unitario real,
    preco_total real,
    id_produto integer,
    id_pedido integer
);
 #   DROP TABLE public.tbl_item_pedido;
       public         heap    postgres    false            ?            1259    49280 !   tbl_item_pedido_id_num_pedido_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_item_pedido_id_num_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbl_item_pedido_id_num_pedido_seq;
       public          postgres    false    211            R           0    0 !   tbl_item_pedido_id_num_pedido_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tbl_item_pedido_id_num_pedido_seq OWNED BY public.tbl_item_pedido.id_num_pedido;
          public          postgres    false    210            ?            1259    49231 
   tbl_pedido    TABLE     ?   CREATE TABLE public.tbl_pedido (
    id_pedido integer NOT NULL,
    data_pedido date,
    valor_total real,
    observacoes text,
    status integer,
    id_cliente integer
);
    DROP TABLE public.tbl_pedido;
       public         heap    postgres    false            ?            1259    49229    tbl_pedido_id_pedido_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_pedido_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_pedido_id_pedido_seq;
       public          postgres    false    207            S           0    0    tbl_pedido_id_pedido_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_pedido_id_pedido_seq OWNED BY public.tbl_pedido.id_pedido;
          public          postgres    false    206            ?            1259    24669    tbl_produto    TABLE       CREATE TABLE public.tbl_produto (
    id_produto integer NOT NULL,
    nome_produto character varying(100) NOT NULL,
    detalhe_produto text,
    link_foto character varying(255) NOT NULL,
    preco_produto double precision NOT NULL,
    id_categoria integer,
    disponivel integer
);
    DROP TABLE public.tbl_produto;
       public         heap    postgres    false            ?            1259    24667    tbl_produto_id_produto_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_produto_id_produto_seq;
       public          postgres    false    205            T           0    0    tbl_produto_id_produto_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_produto_id_produto_seq OWNED BY public.tbl_produto.id_produto;
          public          postgres    false    204            ?            1259    49300    tbl_usuario    TABLE     ?   CREATE TABLE public.tbl_usuario (
    id_usuario integer NOT NULL,
    username character varying(45) NOT NULL,
    email character varying(50) NOT NULL,
    senha character varying(100) NOT NULL,
    nome_usuario character varying(100) NOT NULL
);
    DROP TABLE public.tbl_usuario;
       public         heap    postgres    false            ?            1259    49298    tbl_usuario_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_usuario_id_usuario_seq;
       public          postgres    false    213            U           0    0    tbl_usuario_id_usuario_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_usuario_id_usuario_seq OWNED BY public.tbl_usuario.id_usuario;
          public          postgres    false    212            ?
           2604    16459    tbl_categoria id_categoria    DEFAULT     ?   ALTER TABLE ONLY public.tbl_categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.tbl_categoria_id_categoria_seq'::regclass);
 I   ALTER TABLE public.tbl_categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    203    202    203            ?
           2604    49260    tbl_cliente id_cliente    DEFAULT     ?   ALTER TABLE ONLY public.tbl_cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.tbl_cliente_id_cliente_seq'::regclass);
 E   ALTER TABLE public.tbl_cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    209    208    209            ?
           2604    49285    tbl_item_pedido id_num_pedido    DEFAULT     ?   ALTER TABLE ONLY public.tbl_item_pedido ALTER COLUMN id_num_pedido SET DEFAULT nextval('public.tbl_item_pedido_id_num_pedido_seq'::regclass);
 L   ALTER TABLE public.tbl_item_pedido ALTER COLUMN id_num_pedido DROP DEFAULT;
       public          postgres    false    211    210    211            ?
           2604    49234    tbl_pedido id_pedido    DEFAULT     |   ALTER TABLE ONLY public.tbl_pedido ALTER COLUMN id_pedido SET DEFAULT nextval('public.tbl_pedido_id_pedido_seq'::regclass);
 C   ALTER TABLE public.tbl_pedido ALTER COLUMN id_pedido DROP DEFAULT;
       public          postgres    false    206    207    207            ?
           2604    24672    tbl_produto id_produto    DEFAULT     ?   ALTER TABLE ONLY public.tbl_produto ALTER COLUMN id_produto SET DEFAULT nextval('public.tbl_produto_id_produto_seq'::regclass);
 E   ALTER TABLE public.tbl_produto ALTER COLUMN id_produto DROP DEFAULT;
       public          postgres    false    205    204    205            ?
           2604    49303    tbl_usuario id_usuario    DEFAULT     ?   ALTER TABLE ONLY public.tbl_usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.tbl_usuario_id_usuario_seq'::regclass);
 E   ALTER TABLE public.tbl_usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    213    212    213            ?          0    16456    tbl_categoria 
   TABLE DATA           E   COPY public.tbl_categoria (id_categoria, nome_categoria) FROM stdin;
    public          postgres    false    203   ?D       E          0    49257    tbl_cliente 
   TABLE DATA           ?   COPY public.tbl_cliente (id_cliente, nome_cliente, email_cliente, telefone_cliente, cep_cliente, logradouro, numero, complemento, bairro, cidade, estado) FROM stdin;
    public          postgres    false    209   ?D       G          0    49282    tbl_item_pedido 
   TABLE DATA           v   COPY public.tbl_item_pedido (id_num_pedido, qtd_item, preco_unitario, preco_total, id_produto, id_pedido) FROM stdin;
    public          postgres    false    211   ?D       C          0    49231 
   tbl_pedido 
   TABLE DATA           j   COPY public.tbl_pedido (id_pedido, data_pedido, valor_total, observacoes, status, id_cliente) FROM stdin;
    public          postgres    false    207   ?D       A          0    24669    tbl_produto 
   TABLE DATA           ?   COPY public.tbl_produto (id_produto, nome_produto, detalhe_produto, link_foto, preco_produto, id_categoria, disponivel) FROM stdin;
    public          postgres    false    205   E       I          0    49300    tbl_usuario 
   TABLE DATA           W   COPY public.tbl_usuario (id_usuario, username, email, senha, nome_usuario) FROM stdin;
    public          postgres    false    213    E       V           0    0    tbl_categoria_id_categoria_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_categoria_id_categoria_seq', 24, true);
          public          postgres    false    202            W           0    0    tbl_cliente_id_cliente_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_cliente_id_cliente_seq', 2, true);
          public          postgres    false    208            X           0    0 !   tbl_item_pedido_id_num_pedido_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tbl_item_pedido_id_num_pedido_seq', 3, true);
          public          postgres    false    210            Y           0    0    tbl_pedido_id_pedido_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_pedido_id_pedido_seq', 14, true);
          public          postgres    false    206            Z           0    0    tbl_produto_id_produto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_produto_id_produto_seq', 2, true);
          public          postgres    false    204            [           0    0    tbl_usuario_id_usuario_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_usuario_id_usuario_seq', 1, true);
          public          postgres    false    212            ?
           2606    49275    tbl_cliente email_uq 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbl_cliente
    ADD CONSTRAINT email_uq UNIQUE (email_cliente);
 >   ALTER TABLE ONLY public.tbl_cliente DROP CONSTRAINT email_uq;
       public            postgres    false    209            ?
           2606    16463 .   tbl_categoria tbl_categoria_nome_categoria_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.tbl_categoria
    ADD CONSTRAINT tbl_categoria_nome_categoria_key UNIQUE (nome_categoria);
 X   ALTER TABLE ONLY public.tbl_categoria DROP CONSTRAINT tbl_categoria_nome_categoria_key;
       public            postgres    false    203            ?
           2606    16461     tbl_categoria tbl_categoria_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_categoria
    ADD CONSTRAINT tbl_categoria_pkey PRIMARY KEY (id_categoria);
 J   ALTER TABLE ONLY public.tbl_categoria DROP CONSTRAINT tbl_categoria_pkey;
       public            postgres    false    203            ?
           2606    49265    tbl_cliente tbl_cliente_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_cliente
    ADD CONSTRAINT tbl_cliente_pkey PRIMARY KEY (id_cliente);
 F   ALTER TABLE ONLY public.tbl_cliente DROP CONSTRAINT tbl_cliente_pkey;
       public            postgres    false    209            ?
           2606    49287 $   tbl_item_pedido tbl_item_pedido_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tbl_item_pedido
    ADD CONSTRAINT tbl_item_pedido_pkey PRIMARY KEY (id_num_pedido);
 N   ALTER TABLE ONLY public.tbl_item_pedido DROP CONSTRAINT tbl_item_pedido_pkey;
       public            postgres    false    211            ?
           2606    49239    tbl_pedido tbl_pedido_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_pedido
    ADD CONSTRAINT tbl_pedido_pkey PRIMARY KEY (id_pedido);
 D   ALTER TABLE ONLY public.tbl_pedido DROP CONSTRAINT tbl_pedido_pkey;
       public            postgres    false    207            ?
           2606    24677    tbl_produto tbl_produto_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_produto
    ADD CONSTRAINT tbl_produto_pkey PRIMARY KEY (id_produto);
 F   ALTER TABLE ONLY public.tbl_produto DROP CONSTRAINT tbl_produto_pkey;
       public            postgres    false    205            ?
           2606    49307 !   tbl_usuario tbl_usuario_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT tbl_usuario_email_key UNIQUE (email);
 K   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT tbl_usuario_email_key;
       public            postgres    false    213            ?
           2606    49305    tbl_usuario tbl_usuario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT tbl_usuario_pkey PRIMARY KEY (id_usuario);
 F   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT tbl_usuario_pkey;
       public            postgres    false    213            ?
           2606    49309    tbl_usuario tbl_usuario_unq 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT tbl_usuario_unq UNIQUE (username);
 E   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT tbl_usuario_unq;
       public            postgres    false    213            ?
           2606    49277    tbl_cliente telefone_uq 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_cliente
    ADD CONSTRAINT telefone_uq UNIQUE (telefone_cliente);
 A   ALTER TABLE ONLY public.tbl_cliente DROP CONSTRAINT telefone_uq;
       public            postgres    false    209            ?
           2606    49266    tbl_pedido fk_id_cliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_pedido
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.tbl_cliente(id_cliente);
 B   ALTER TABLE ONLY public.tbl_pedido DROP CONSTRAINT fk_id_cliente;
       public          postgres    false    209    2737    207            ?
           2606    49293    tbl_item_pedido fk_id_pedido    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_item_pedido
    ADD CONSTRAINT fk_id_pedido FOREIGN KEY (id_pedido) REFERENCES public.tbl_pedido(id_pedido);
 F   ALTER TABLE ONLY public.tbl_item_pedido DROP CONSTRAINT fk_id_pedido;
       public          postgres    false    207    2733    211            ?
           2606    49288    tbl_item_pedido fk_id_produto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_item_pedido
    ADD CONSTRAINT fk_id_produto FOREIGN KEY (id_produto) REFERENCES public.tbl_produto(id_produto);
 G   ALTER TABLE ONLY public.tbl_item_pedido DROP CONSTRAINT fk_id_produto;
       public          postgres    false    205    2731    211            ?
           2606    24678 )   tbl_produto tbl_produto_id_categoria_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_produto
    ADD CONSTRAINT tbl_produto_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.tbl_categoria(id_categoria);
 S   ALTER TABLE ONLY public.tbl_produto DROP CONSTRAINT tbl_produto_id_categoria_fkey;
       public          postgres    false    2729    205    203            ?      x?????? ? ?      E      x?????? ? ?      G      x?????? ? ?      C      x?????? ? ?      A      x?????? ? ?      I   8   x?3???/N??L?/B??s3s???s9?2???3K?9????T? Is??qqq t`     