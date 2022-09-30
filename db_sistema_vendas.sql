PGDMP         ,                z            db_sistema_vendas    12.10    12.10                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16453    db_sistema_vendas    DATABASE     �   CREATE DATABASE db_sistema_vendas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE db_sistema_vendas;
                postgres    false            �            1259    16456    tbl_categoria    TABLE     }   CREATE TABLE public.tbl_categoria (
    id_categoria integer NOT NULL,
    nome_categoria character varying(100) NOT NULL
);
 !   DROP TABLE public.tbl_categoria;
       public         heap    postgres    false            �            1259    16454    tbl_categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_categoria_id_categoria_seq;
       public          postgres    false    203                       0    0    tbl_categoria_id_categoria_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_categoria_id_categoria_seq OWNED BY public.tbl_categoria.id_categoria;
          public          postgres    false    202            �            1259    24669    tbl_produto    TABLE       CREATE TABLE public.tbl_produto (
    id_produto integer NOT NULL,
    nome_produto character varying(100) NOT NULL,
    detalhe_produto text,
    link_foto character varying(255) NOT NULL,
    preco_produto double precision NOT NULL,
    id_categoria integer
);
    DROP TABLE public.tbl_produto;
       public         heap    postgres    false            �            1259    24667    tbl_produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_produto_id_produto_seq;
       public          postgres    false    205                       0    0    tbl_produto_id_produto_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_produto_id_produto_seq OWNED BY public.tbl_produto.id_produto;
          public          postgres    false    204            �
           2604    16459    tbl_categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY public.tbl_categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.tbl_categoria_id_categoria_seq'::regclass);
 I   ALTER TABLE public.tbl_categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    24672    tbl_produto id_produto    DEFAULT     �   ALTER TABLE ONLY public.tbl_produto ALTER COLUMN id_produto SET DEFAULT nextval('public.tbl_produto_id_produto_seq'::regclass);
 E   ALTER TABLE public.tbl_produto ALTER COLUMN id_produto DROP DEFAULT;
       public          postgres    false    204    205    205                      0    16456    tbl_categoria 
   TABLE DATA           E   COPY public.tbl_categoria (id_categoria, nome_categoria) FROM stdin;
    public          postgres    false    203   �                 0    24669    tbl_produto 
   TABLE DATA           x   COPY public.tbl_produto (id_produto, nome_produto, detalhe_produto, link_foto, preco_produto, id_categoria) FROM stdin;
    public          postgres    false    205   l                  0    0    tbl_categoria_id_categoria_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_categoria_id_categoria_seq', 24, true);
          public          postgres    false    202                       0    0    tbl_produto_id_produto_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tbl_produto_id_produto_seq', 1, false);
          public          postgres    false    204            �
           2606    16463 .   tbl_categoria tbl_categoria_nome_categoria_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.tbl_categoria
    ADD CONSTRAINT tbl_categoria_nome_categoria_key UNIQUE (nome_categoria);
 X   ALTER TABLE ONLY public.tbl_categoria DROP CONSTRAINT tbl_categoria_nome_categoria_key;
       public            postgres    false    203            �
           2606    16461     tbl_categoria tbl_categoria_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_categoria
    ADD CONSTRAINT tbl_categoria_pkey PRIMARY KEY (id_categoria);
 J   ALTER TABLE ONLY public.tbl_categoria DROP CONSTRAINT tbl_categoria_pkey;
       public            postgres    false    203            �
           2606    24677    tbl_produto tbl_produto_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_produto
    ADD CONSTRAINT tbl_produto_pkey PRIMARY KEY (id_produto);
 F   ALTER TABLE ONLY public.tbl_produto DROP CONSTRAINT tbl_produto_pkey;
       public            postgres    false    205            �
           2606    24678 )   tbl_produto tbl_produto_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_produto
    ADD CONSTRAINT tbl_produto_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.tbl_categoria(id_categoria);
 S   ALTER TABLE ONLY public.tbl_produto DROP CONSTRAINT tbl_produto_id_categoria_fkey;
       public          postgres    false    205    2699    203               �   x�m�Mj�@���S�	�%�ľ@���B��F�L�!���3� �X���|�B�ͳ?�bBi�B<���xL��&+���iD�O�$^/Zy{
���јw�����k�Ag>�tNN�0�!��i�~�"^�K���C��Ώ�ۃ�N��N��A��%�Ѽm4�A����|.4o��yfͩ �j�}.�Oc�����            x������ � �     