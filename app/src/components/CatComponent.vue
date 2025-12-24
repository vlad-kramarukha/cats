<script setup lang="ts">
import cat1 from '../assets/cat-1.jpg'
import cat2 from '../assets/cat-2.jpg'
import { computed, shallowRef } from 'vue'

const isRotate = shallowRef(false)
const colorIndex = shallowRef(0)
const catNames = ['Клёпа', 'Йося']
const catNameColors = [
    'bg-gradient-to-r from-cyan-400 to-blue-500',
    'bg-gradient-to-r from-emerald-400 to-teal-500',
    'bg-gradient-to-r from-violet-500 to-purple-600',
    'bg-gradient-to-r from-pink-500 to-rose-600',
    'bg-gradient-to-r from-orange-400 to-red-500',
    'bg-gradient-to-r from-yellow-400 to-amber-500',
    'bg-gradient-to-r from-lime-400 to-green-500',
    'bg-gradient-to-r from-sky-400 to-indigo-500',
    'bg-gradient-to-r from-fuchsia-500 to-pink-600',
    'bg-gradient-to-r from-rose-500 to-red-600',
    'bg-gradient-to-r from-purple-500 to-pink-500',
    'bg-gradient-to-r from-blue-500 to-cyan-400',
    'bg-gradient-to-r from-green-400 to-emerald-500',
    'bg-gradient-to-r from-yellow-300 to-orange-400',
    'bg-gradient-to-r from-indigo-500 to-blue-500',
    'bg-gradient-to-r from-red-400 to-orange-400',
    'bg-gradient-to-r from-teal-400 to-cyan-500',
    'bg-gradient-to-r from-pink-400 to-rose-500',
    'bg-gradient-to-r from-violet-500 to-indigo-500',
    'bg-gradient-to-r from-amber-400 to-yellow-500',
    'bg-gradient-to-br from-blue-400 to-purple-500',
    'bg-gradient-to-bl from-green-400 to-blue-500',
    'bg-gradient-to-tr from-orange-400 to-red-500',
    'bg-gradient-to-tl from-pink-400 to-rose-500',
    'bg-gradient-to-b from-cyan-400 to-blue-500',
    'bg-gradient-to-t from-emerald-400 to-teal-500',
    'bg-gradient-to-l from-violet-500 to-purple-600',
    'bg-gradient-to-r from-yellow-300 to-orange-400',
    'bg-gradient-to-r from-pink-500 via-purple-500 to-indigo-500',
    'bg-gradient-to-r from-green-400 via-cyan-400 to-blue-500',
    'bg-gradient-to-r from-yellow-300 via-orange-400 to-red-500',
    'bg-gradient-to-r from-emerald-400 via-teal-400 to-cyan-500',
    'bg-gradient-to-r from-rose-500 via-pink-500 to-fuchsia-500',
    'bg-gradient-to-r from-blue-400 via-indigo-500 to-purple-500',
    'bg-gradient-to-r from-lime-400 via-green-500 to-emerald-500',
    'bg-gradient-to-r from-amber-300 via-orange-400 to-red-500',
    'bg-gradient-to-br from-blue-500 to-cyan-400',
    'bg-gradient-to-bl from-purple-500 to-pink-500',
    'bg-gradient-to-tr from-green-500 to-emerald-400',
    'bg-gradient-to-tl from-orange-500 to-red-400',
    'bg-gradient-to-br from-indigo-500 to-blue-400',
    'bg-gradient-to-bl from-teal-500 to-cyan-400',
    'bg-gradient-to-tr from-rose-500 to-pink-400',
    'bg-gradient-to-tl from-yellow-400 to-amber-500',
    'bg-gradient-to-r from-cyan-500 to-blue-600',
    'bg-gradient-to-r from-emerald-500 to-teal-600',
    'bg-gradient-to-r from-violet-600 to-purple-700',
    'bg-gradient-to-r from-pink-600 to-rose-700',
    'bg-gradient-to-r from-orange-500 to-red-600',
    'bg-gradient-to-r from-yellow-500 to-amber-600',
    'bg-gradient-to-r from-lime-500 to-green-600',
    'bg-gradient-to-r from-sky-500 to-blue-600',
    'bg-gradient-to-r from-red-400 via-yellow-400 to-green-400',
    'bg-gradient-to-r from-pink-400 via-purple-400 to-blue-400',
    'bg-gradient-to-r from-cyan-300 via-blue-400 to-indigo-500',
    'bg-gradient-to-r from-yellow-300 via-orange-400 to-red-500',
    'bg-gradient-to-r from-blue-600 to-cyan-500',
    'bg-gradient-to-r from-purple-600 to-pink-500',
    'bg-gradient-to-r from-emerald-600 to-teal-500',
    'bg-gradient-to-r from-rose-600 to-pink-500',
    'bg-gradient-to-r from-indigo-600 to-blue-500',
    'bg-gradient-to-r from-red-500 to-orange-400',
    'bg-gradient-to-r from-green-500 to-emerald-400',
    'bg-gradient-to-r from-violet-600 to-purple-500',
]

const currentCatName = computed(() => catNames[isRotate.value ? 1 : 0])
const catNameColor = computed(() => catNameColors[colorIndex.value])

function rotateCard() {
    colorIndex.value = colorIndex.value === catNameColors.length - 1 ? 0 : colorIndex.value + 1
    isRotate.value = !isRotate.value
}
</script>

<template>
    <div class="text-center px-2 py-2 mb-6">
        <h1 class="text-7xl mb-4">Здесь ничего нет</h1>
        <p class="text-5xl">
            А это
            <span class="text-6xl bg-clip-text text-transparent" :class="catNameColor">
                {{ currentCatName }}
            </span>
        </p>
    </div>

    <div class="card" @click="rotateCard">
        <img
            :src="cat1"
            alt="Клёпа"
            width="100%"
            class="card__front rounded-2xl"
            :class="{ rotate__front: isRotate }"
        />
        <img :src="cat2" alt="Йося" width="100%" class="card__back rounded-2xl" :class="{ rotate__back: isRotate }" />
    </div>

    <div class="grid place-content-center px-2 py-2 mt-4 animate-bounce">
        <div>
            <svg
                class="mx-auto"
                xmlns="http://www.w3.org/2000/svg"
                height="48px"
                viewBox="0 -960 960 960"
                width="48px"
                fill="currentColor"
            >
                <path d="M440-160v-487L216-423l-56-57 320-320 320 320-56 57-224-224v487h-80Z" />
            </svg>
        </div>

        <p class="text-5xl">Нажми</p>
    </div>
</template>

<style scoped>
.card {
    position: relative;
    color: white;
    width: 500px;
    margin: 0 auto;
    user-select: none;
    touch-action: none;
}

.card__front {
    z-index: 1;
    position: relative;
    backface-visibility: hidden;
    transition: transform 0.3s cubic-bezier(0.2, 0.85, 0.4, 1.275);
}

.card__back {
    z-index: 0;
    position: absolute;
    top: 0;
    backface-visibility: hidden;
    transform: rotateY(-180deg);
    transition: transform 0.3s cubic-bezier(0.2, 0.85, 0.4, 1.275);
}

.rotate__back {
    transform: rotateY(0deg);
    z-index: 2;
}

.rotate__front {
    transform: rotateY(180deg);
    z-index: -1;
}
</style>
